require 'nokogiri'
require 'open-uri'

@lma = Hash.new
# Création d'un H

def get_townhall_email(uri)
	dod = Nokogiri::HTML(open(uri))
	vil = dod.search('h1')[1].text.split(' - ')[0]
	ext = dod.css('.txt-primary')
	mai = ext[3].search('td')
	if ((mai[0].text == "Adresse Email") && (mai[1].text != ""))
    	@lma[vil]=mai[1].text
    else
    	puts "erreur adresse mail sur "+vil
    end
    sleep(1.0)
end
=begin 
- Création methode parametre URL = URI = lien du site
- Création variable contenu html correspondant à l'url du site
- Création variable, cherche 2eme balise '<h1>' format texte, decoupé au tiret, garder 1er script
- Création variable, cherche la classe '.txt-primary'
- Création variable, qui prend le 3eme element et cherche '<td>'
- Si le 1er element = "Adresse Email" et que le second n'est pas vide =< on a une supposée adresse mail
-   on crée un nouvel élément dans le hash, avec comme "id" = clé le nom de la ville et comme contenu l'email
-   Sinon erreur non de la ville
- Tempo 1s afin de rester correcte
=end 
def get_townhall_uri(sit)
	doc = Nokogiri::HTML(open(sit))
	prf = sit.split('/')
	prf.delete_at(prf.length-1)
	prf = prf.join('/')
	doc.css('a.lientxt').each do |mairie|
		get_townhall_email(prf+mairie["href"][1..mairie["href"].length])
	end
end
=begin
- Création methode parametre URL = URI = lien du site
- Création variable contenu de la page correspondante du site
- Création variable decoupage '/' [ "http://www.xxx.com/page.html" -> "http://www.xxx.com" ]
- suppr dernier élement (page.html)
- on refait la chaine complete sans le dernier élément (le nom de la page de la liste) "http://www.xxx.com"
- recherche chaque element de la page correspondant à la classe => liste des liens et pour chaque lien
- appel seconde methode, reconstruction du lien en sautant le . du href "relatif" pour avoir une adresse "absolue"
=end
get_townhall_uri("http://annuaire-des-mairies.com/val-d-oise.html")
puts @lma
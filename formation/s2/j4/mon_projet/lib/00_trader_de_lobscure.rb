require 'nokogiri'
require 'open-uri'

def crypto
	res = Hash.new
	doc = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
	rows = doc.xpath('//table/tbody/tr')
	rows.collect do |row|
		links = row.search('a')
		res[links[0].content]=links[2].content[1..links[2].content.length]
	end
 	puts res
end

crypto
=begin
- Création d'un hash
- Création d'une variable qui contient la page html lue via http à l'adresse du site 
- Création d'une variable qui isole (la table, le body de la table, balise tr) => liste des <tr>
- Création d'une boucle sur la variable rows, collect = each, donc, chaque <tr>...</tr> un par un
- Création d'une variable qui va chercher dans chacun des <tr>...<</tr> les balises a => liste des <a>
- Rentrer dans le hash, avec comme clé le contenu du 1er <a>, le second qui lui sera associér en sotant le premier caractère et en allant jusqua la fin du contenu
=end
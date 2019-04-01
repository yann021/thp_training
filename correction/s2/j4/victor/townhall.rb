require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_townhall_email(townhall_url)
	name_of_city = "/html/body/div/main/section[1]/div/div/div/h1"
	mairie = Nokogiri::HTML(open("http://annuaire-des-mairies.com/#{townhall_url}"))


    name = []
    email = []

    name.push(mairie.css(name_of_city).text)
    email.push(mairie.css('tr.txt-primary.tr-last td')[7].text)

    hash = name.zip(email).to_h

end

def get_townhall_urls
	array = []
	mairie = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

	mairie.css('a.lientxt').each do |val|
		array.push(val['href'][2..-1])
	end
	array.each do |url|
    puts get_townhall_email(url)
	end
end

get_townhall_urls()
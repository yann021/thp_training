require 'rubygems'
require 'nokogiri'
require 'open-uri'

#http://www2.assemblee-nationale.fr/deputes/liste/alphabetique
#//*[@id='deputes-list']/div/ul/li/a

def road_of_deputies(email)
  name_of_deputy = "//*[@id='deputes-list']/div/ul/li/a"
  website_to_email = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr#{email}"))

  name = []
  email = []
  
  name.push(mairie.css(name_of_city).text)
  email.push(mairie.css('dd.a.email')[7].text)
  
  hash = name.zip(email).to_h
end

def get_deputies_email
	array = []
	website = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))

	website.css('dd\.a\.email').each do |val|
		array.push(val['href'][2..-1])
	end
	array.each do |url|
    puts get_deputies_email(url)
	end
end

get_deputies_email()


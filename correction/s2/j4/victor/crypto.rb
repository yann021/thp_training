require 'rubygems'
require 'nokogiri'
require 'open-uri'


def trader
  crypto = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   

  name_crypto = []
  price_crypto = []
  array = []
 

  crypto.xpath('//*[@class="currency-name-container link-secondary"]').each do |name|
    name_crypto.push(name.text) 
  end

  crypto.xpath('//*[@class="price"]').each do |price|
    price_crypto.push(price.text)
  end

  hash_crypto = name_crypto.zip(price_crypto).to_h
  p array << hash_crypto
end

trader()



#puts name_crypto.count
#puts price_crypto.count

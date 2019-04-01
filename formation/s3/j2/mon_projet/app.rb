require 'bundler'
require 'csv'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require 'app/scrapper'

page_mairie = Scrapper.new("http://annuaire-des-mairies.com/val-d-oise.html")

$tst = page_mairie.mairies



def save_as_JSON
	File.open("db/emails.json","w") do |f|
		f.write($tst.to_json)
	end 
end

def save_as_csv
	CSV.open("db/emails.csv", "w") {|csv| $tst.to_a.each {|elem| csv << elem} }
end

def save_as_spreadsheet
session = GoogleDrive::Session.from_config("config.json")
ws = session.spreadsheet_by_key("1ArAsci7WJB0bb_FmmwIr56YvNXUUSyxhPxOiT5aXfnQ").worksheets[0]
ws.insert_rows(2, $tst)
ws.save
end

def perform
	save_as_csv
	save_as_JSON
	save_as_spreadsheet 
end

perform
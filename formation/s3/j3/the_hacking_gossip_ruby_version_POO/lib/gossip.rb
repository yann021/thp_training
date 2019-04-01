require 'csv' # permet de "décoder" le csv (ligne -> tableau)

class Gossip

	attr_reader :author, :content

	def initialize (author, content)
		@content = content
		@author = author
	end	

	def save
		file = File.open("./db/gossip.csv", "a+") 
		file.puts("\"#{@author}\",\"#{@content}\"")
		file.close
		puts "Gossip enregistré !!!\n"
	end

	def self.index_gossips
		all_gossips = []
		file = File.open("./db/gossip.csv", "a+") 
		CSV.foreach(file, headers: false) do |ligne|
			all_gossips << Gossip.new(ligne[0],ligne[1])
		end
		return all_gossips
	end
end
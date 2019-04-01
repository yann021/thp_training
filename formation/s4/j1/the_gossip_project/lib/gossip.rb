
class Gossip

	attr_accessor :author, :content

	def initialize(author, content)
		@author = author
		@content = content
	end	

	def save
		CSV.open("./db/gossip.csv", "a") do |csv|
    	csv << [ @author, @content ]
  	end
	end
# sauvegarder
# on ouvre le fichier csv et ecris et sauve la varible author et content 

	def self.all
		all_gossips = []
		CSV.read("./db/gossip.csv").each do |csv_line|
  		all_gossips << Gossip.new(csv_line[0], csv_line[1])
		end
		return all_gossips
	end
# voir tous les gossips
# on crée un array , on ouvre le fichier csv, et on ecris pour chaque ligne
# le premier argument et le second dans le array que l'on retourne au controller

	def self.find(id)
		the_gossip = []
		CSV.read("./db/gossip.csv").each_with_index do |csv_line, index|
			if (id.to_i == index+1)
  			the_gossip << Gossip.new(csv_line[0], csv_line[1])
  			break
  		end
		end
		return the_gossip
	end
# retrouver un gossip grce a son id
# on crée un nouvelle array, on ouvre le fichier csv, si l'id correspond 
# au parametre idex, on le sauvegarde dans l'array que l'on retourne

	def self.update(author,content,id)
		new_array=[]
		CSV.foreach("./db/gossip.csv").with_index do |csv,i|
			if id.to_i == i+1
				new_array << [ author, content ]
			else
				new_array << csv
			end
		end
		puts new_array
		CSV.open("./db/gossip.csv", "w") do |csv| 
			new_array.each do |row|
				csv << row
			end
		end
	end
# modifier un gossip
# on crée un nouvelle arret, on ouvre le fichier csv, si l'id correspond a 
# l'index on ecrit le gossip avec les nouveau parametre dans le array.
# sinon on l'ecrit telle qu'elle dans le array
# enfin on réecris le fichier csv avec le contenu du array

end


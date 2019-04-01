
class View 

	def initialize()
		@params = Hash.new
	end
	
	def create_gossip
		puts "Nouveau Gossip :"
		print "author .: "
		@params["author"]=gets.chomp
		print "content : "
		@params["content"]=gets.chomp
		puts ""
		return @params
	end

	def self.index_gossips(gossips)
  	gossips.each_with_index do |gossip,index|
#   gossips.     with_index  (ça prend le tableau de gossip avec le numero de ligne )
  	  puts "\n          Gossip n°#{index + 1}:"
  	  puts "               #{gossip.content}"
  	  puts "                              - #{gossip.author}\n"
  	  puts ""
  	end
  end

end
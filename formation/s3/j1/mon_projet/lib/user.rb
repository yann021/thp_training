require "pry"

class User

	attr_accessor :email
	@@nbr = []

	def initialize(email)
	    @email = email
	    @@nbr.push(self)
	end

	def self.length
    	return @@nbr.length
	end

	def self.find_by_email(email)
		@@nbr.each do |user| 
			return user if user.email == email 
		end	 	
	end

end
binding.pry
puts "end of file"
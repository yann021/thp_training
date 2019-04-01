require "pry"
require 'time'

class Event
    
	attr_accessor :start_date, :length, :title, :attendees

	def initialize(start_date, length, title, attendees)
		@start_date = Time.parse(start_date)
		@length = length.to_i
		@title = title.to_s
		@attendees = attendees
	end

	def postpone_24h
		@start_date = @start_date + 24*60*60
	end
	
	def end_date
		@start_date = @start_date + @length * 60
	end 

	def is_past
		if Time.now > @start_date
			return true
		else
			return false
		end	
	end

	def is_future
		!self.is_past
	end

	def is_soon
		if @start_date - Time.now < 30*60
			return true
		else	
			return false
		end
	end

	def to_s
		puts "Titre : #{@title}"
		puts "Date de début : #{@start_date}"
		puts "Durée : #{@length}"
		puts "Invités : #{@attendees}"
	end

end

puts "end of file"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Starting bu destroy data
Event.destroy_all
Attendance.destroy_all
User.destroy_all

# Creation of 10 users
50.times do 
	fn = Faker::Name.first_name
	ln = Faker::Name.last_name
	desc = "Hello my name is #{fn} and I am #{Faker::Number.between(18, 30)} y-o. I would like to attempt at least 1 event a week"
	User.create(first_name: fn, last_name: ln, email: Faker::Internet.email, description: desc, password: "aaaaaa")
end

puts "50 users have been created"

#Creation of 10 events
10.times do
	Event.create(title: Faker::Company.buzzword, description: "This is a fucking good event, and you shoul attend to it" , start_date: Faker::Time.between(DateTime.now, DateTime.now+10000) ,duration: 15, admin: User.order("RANDOM()").first, price:Faker::Number.between(1, 1000) , location: Faker::GameOfThrones.city)
end
puts "10 events have been created"

#Add attendees to each event
Event.all.each do |event|
	#the event admin will attend
	Attendance.create(event: event, user: event.admin, stripe_customer_id: "123")
	#Then between 2 and 10 people will also attend
	attendees = rand(2...10)
	attendees.times do
		attendee = User.order("RANDOM()").first
		#If the user already attend the event, no need to create a new attendance
		unless event.users.include?attendee 
			Attendance.create(event: event, user: attendee, stripe_customer_id: "123")
		end
	end
end
puts "Users have attempted to events"

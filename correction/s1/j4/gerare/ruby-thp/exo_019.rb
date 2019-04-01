puts "Bonjour, je genere des adresses email"

nbr = 1
email = []
a = 0

while nbr < 51 do
   	
   	if nbr < 10
		email << "jean.dupont.#{a}#{nbr}@email.fr"
	
	else
		email << "jean.dupont.#{nbr}@email.fr"
	
	end
   	
   
   nbr = nbr + 1
   
end

nbremail = email.length 

	puts "#{nbremail} adresses generees !"
	puts "Voici les adresses paires generees:"

	result = email.find {|a| a.include?("02")}
	puts result

	result = email.find {|a| a.include?("04")}
	puts result

	result = email.find {|a| a.include?("06")}
	puts result

	result = email.find {|a| a.include?("08")}
	puts result

	result = email.find {|a| a.include?("10")}
	puts result

	result = email.find {|a| a.include?("12")}
	puts result

	result = email.find {|a| a.include?("14")}
	puts result

	result = email.find {|a| a.include?("16")}
	puts result

	result = email.find {|a| a.include?("18")}
	puts result

	result = email.find {|a| a.include?("20")}
	puts result

	result = email.find {|a| a.include?("22")}
	puts result

	result = email.find {|a| a.include?("24")}
	puts result

	result = email.find {|a| a.include?("26")}
	puts result

	result = email.find {|a| a.include?("28")}
	puts result

	result = email.find {|a| a.include?("30")}
	puts result

	result = email.find {|a| a.include?("32")}
	puts result

	result = email.find {|a| a.include?("34")}
	puts result

	result = email.find {|a| a.include?("36")}
	puts result

	result = email.find {|a| a.include?("38")}
	puts result

	result = email.find {|a| a.include?("40")}
	puts result

	result = email.find {|a| a.include?("42")}
	puts result

	result = email.find {|a| a.include?("44")}
	puts result

	result = email.find {|a| a.include?("46")}
	puts result

	result = email.find {|a| a.include?("48")}
	puts result

	result = email.find {|a| a.include?("50")}
	puts result

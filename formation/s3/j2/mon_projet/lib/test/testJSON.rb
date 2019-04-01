require 'json'


	tst = Hash.new
	tst = { "Jane Doe" => 10, "Jim Doe" => 6 }
	puts tst

	File.open("/home/anone/Documents/test.json","w") do |f|
		f.write(tst.to_json)
	end
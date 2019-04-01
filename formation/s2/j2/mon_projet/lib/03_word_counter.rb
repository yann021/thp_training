dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def word_counter (tab, dictionary)
	tab=tab.split(' ')
	res=Hash.new("res")
	dictionary.each do |mot|
		nbr = tab.count {|x| x.match Regexp.new("^"+Regexp.escape(mot)+"$", Regexp::IGNORECASE)}
		res[mot]=nbr if nbr > 0
	end
	return res
end

puts word_counter("below", dictionary)
# => => {"below"=>1, "low"=>1}
puts word_counter("Howdy partner, sit down! How'sw<going?", dictionary)
# => => {"down"=>1, "how"=>2, "howdy"=>1, "go"=>1, "going"=>1, "it"=>2, "i"=>3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
#		{"down"=>1, "how"=>2, "howdy"=>1, "go"=>1, "going"=>1, "it"=>2, "i"=>3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}

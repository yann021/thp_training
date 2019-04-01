dictionary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

def word_counter (tab, dictionary)
	tab=tab.split(' ')
	res=Hash.new("res")
	dictionary.each do |mot|
		nbr = tab.count {|x| x.match Regexp.new("^"+Regexp.escape(mot)+"$", Regexp::IGNORECASE)}
#                                    /below/i ... /down/i ... etc
		res[mot]=nbr if nbr > 0
	end
	return res
end

file = File.open("Shakespeare.txt", "r")
text = file.read.gsub(/\r/, " ").gsub(/\n/, "")
puts word_counter(text, dictionary)


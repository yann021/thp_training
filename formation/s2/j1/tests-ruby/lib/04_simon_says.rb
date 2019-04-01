def echo(e)
	return e
end

def shout(e)
	return e.upcase
end

####
def repeat(r, n=2)
	r +(" #{r}" *(n-1))
end

def start_of_word(w, n)
	n1 = n-1
	w1 = w[0..n1]
	return w1
end

def first_word(ierm)
	ierm1 = ierm.split.first
	return ierm1
end

def titleize(ti)
	ti.capitalize!
 capitalized = ti.split.each do |i|
     if i == "of" || i == "the" || i == "and"
     else
       i.capitalize!
     end
   end
   capitalized.join(' ')
end

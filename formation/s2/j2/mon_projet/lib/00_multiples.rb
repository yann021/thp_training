def is_multiple_of_3_or_5?(n)
	@m = (n % 3 == 0 || n % 5 == 0)
    return @m
end

def sum_of_3_or_5_multiples(n)
	sum = 0
	i = 0
    while i < n
		if is_multiple_of_3_or_5?(i)
			sum +=i
		end
	    i += 1
	end
    return sum 
end

puts sum_of_3_or_5_multiples(11) #=> 33
puts sum_of_3_or_5_multiples(10) #=> 23
puts sum_of_3_or_5_multiples(1000) #=> 23


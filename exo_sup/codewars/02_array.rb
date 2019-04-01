require 'test/unit/assertions'
extend Test::Unit::Assertions

def high_and_low(numbers)
	tab=numbers.split(' ')
	max=-999999
	min= 999999
	i = -1
	tab.length.times do
		i+=1
		if tab[i].to_i > max
			max=tab[i].to_i
		end
		if tab[i].to_i < min
			min=tab[i].to_i
		end
	end
	return max.to_s+" "+min.to_s
end

=begin
def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end
=end

#puts high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")

assert_equal(high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6"), "542 -214")
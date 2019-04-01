require 'test/unit/assertions'
extend Test::Unit::Assertions

def get_sum (a, b)
	if a == b 
		return a
	else
		if a > b
			c=a
			a=b
			b=c
		end
		x = 0
		while a <= b do
			x+=a
			a+=1
		end
		return x
	end
end

=begin
def get_sum(a,b)
  return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+) 
end
=end

assert_equal(get_sum(0,1),1)
assert_equal(get_sum(0,-1),-1)
assert_equal(get_sum(1,2),3)
assert_equal(get_sum(5,-1),14)
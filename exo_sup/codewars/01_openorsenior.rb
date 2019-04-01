require 'test/unit/assertions'
extend Test::Unit::Assertions

def openOrSenior(data)
	i=-1
	data.length.times do
		i+=1
		if data[i][0] >= 55 && data[i][1] > 7
			data[i] = "Senior"
		else
			data[i] = "Open"
		end
	end
	return data
end

=begin
def openOrSenior(data)
  data.map { |member| member[0] > 54 && member[1] > 7 ? 'Senior' : 'Open' }
end
=end

#sorti = openOrSenior([[45, 12],[55,21],[19, -2],[104, 20]])
#if sorti == ['Open', 'Senior', 'Open', 'Senior']
#	puts "ok"
#end

assert_equal(openOrSenior([[45, 12],[55,21],[19, -2],[104, 20]]),['Open', 'Senior', 'Open', 'Senior'])
assert_equal(openOrSenior([[3, 12],[55,1],[91, -2],[54, 23]]),['Open', 'Open', 'Open', 'Open'])
assert_equal(openOrSenior([[59, 12],[55,-1],[12, -2],[12, 12]]),['Senior', 'Open', 'Open', 'Open'])
assert_equal(openOrSenior([[16, 23],[73,1],[56, 20],[1, -1]]),['Open', 'Open', 'Senior', 'Open'])
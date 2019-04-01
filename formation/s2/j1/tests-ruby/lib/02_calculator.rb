def add(add1,add2)
	add3= add1 + add2
	return add3
end

def subtract(subb1,subb2)
	subb3= subb1 - subb2
	return subb3
end

def sum(sum1)
	arr = sum1.sum
	return arr
end

def multiply(mul1,mul2)
	mul3 = mul1*mul2
	return mul3
end

def power(pow,pow1)
	pow2 = pow**pow1
	return pow2
end

def factorial(facto)
	if facto == 0
	1
	else
	facto * factorial(facto-1)
	end
end

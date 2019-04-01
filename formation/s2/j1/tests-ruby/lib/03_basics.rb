def who_is_bigger(a,b,c)
	nbr1 = a
	nbr2 = b
	nbr3 = c

	if (nbr1 == nil) || (nbr2 == nil) || ( nbr3 == nil) 
		return "nil detected"

	elsif nbr1 > (nbr2) && nbr1 > (nbr3)
		return "a is bigger"
	
	elsif nbr2 > (nbr1) && nbr2 > (nbr3)
		return "b is bigger"
	
	else nbr3 > (nbr1) && nbr3 > (nbr2)
		return "c is bigger"
	end
end

def reverse_upcase_noLTA (txt)
	txt1 = txt.reverse.upcase.gsub('L', '')
	txt2 = txt1.gsub('T', '')
	txt3 = txt2.gsub('A', '')
	return txt3
end

def array_42 (arr)
	arr1= arr.include? 42
	return arr1
end

def magic_array(arr)
	arr1 = arr.flatten
	arr2 = arr1.sort
	arr3 = arr2.collect { |n| n * 2 }
	#arr2.each do |x|
	#x *= 2
    arr5 =  arr3.reject { |n| n % 3 == 0 }
    arr6 = arr5.uniq
    arr7 = arr6.sort
    return arr7
end
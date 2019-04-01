
def ftoc(temp)
	temp2 = (((temp-32).to_f*5).to_f/9).to_f
	return temp2
end

def ctof(temp)
	temp4 = (((temp*9).to_f/5).to_f+32).to_f
	return temp4
end


	
@content = "en esperant que cette fois sa marche"
@author = "louis"
File.open("../db/gossip.csv", "a+")
file = File.open("../db/gossip.csv", "a+") 
file.puts("#{@author},#{@content}")
file.close
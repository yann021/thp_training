#demande le prenom
def say_hello
  puts "Quel est ton prénom ?"
  print "Tape ici > "
  first_name = gets.chomp
  return first_name
end

#puts prenom
def salut(first_name)
  puts "Bienvenue #{first_name} !"
end

### Perform ###
def perform
  first_name = say_hello
  salut(first_name)
end

perform
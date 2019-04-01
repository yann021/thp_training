def echo(a)
    if a == "hello"
        return "hello"
    elsif a == "bye"
        return "bye"
    end    
end

def shout(a)
    a.upcase()
end

def repeat(a, c=2)
    [a] * c * ' '
end

#Pas ok
def start_of_word(a, b)

end

def first_word(a)
    a.partition(" ").first
end

def titleize(a)
    
    
    b = a.split.map(&:capitalize).join(' ')
    
    c = b.gsub(/A/, 'a')

    #Non fonctionnelle 
    c.gsub(/The/, 'the')
    

end


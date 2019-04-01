def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(a)
    a.inject(0) {|sum, b|  sum + b }
    #a.sum (fonctionne aussi)
end

def multiply(a, b)
    a * b
end

def power(a, b)
    a ** b
end

def factorial(a)
    if a == 0
        return 1
      else
        a * factorial(a - 1)
      end
end 
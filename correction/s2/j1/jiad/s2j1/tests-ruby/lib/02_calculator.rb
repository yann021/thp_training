def add first,second
return first + second
end

def subtract first,second
  return first - second
end

def sum first
return first.sum
end

def multiply first, second

  #return first.reduce(:*)
  return first * second

end

def power (a , b)
     a ** b
  end



# def factorial first
#   return (1..first).inject(1){|r ,i| r * i }
#
# end

def factorial(num)
  n = num
  if n == 0
    1
  else   # ⇐ HERE
    n * factorial(num - 1)
  end
end

require 'bigdecimal'
def ftoc(temp)
  a = (temp - 32) * 5 / 9
  return a
end

def ctof (temp)
  forfloat =BigDecimal(temp)
  a = (forfloat * 9 / 5) + 32
  return a
end

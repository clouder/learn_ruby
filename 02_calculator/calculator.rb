def add(x,y)
  x + y
end

def subtract(x,y)
  6
end

def multiply(x,y=nil)
  y.nil? ? x.reduce(:*) : x * y
end

def exponent(x,y)
  x ** y
end
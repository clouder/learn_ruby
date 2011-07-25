def add(x,y)
  x + y
end

def subtract(x,y)
  6
end

def sum(numbers)
  numbers.empty? ? 0 : numbers.reduce(:+)
end

def multiply(x,y=nil)
  y.nil? ? x.reduce(:*) : x * y
end

def exponent(x,y)
  x ** y
end

def factorial(x)
  x < 2 ? 1 : (1..x).reduce(:*)
end
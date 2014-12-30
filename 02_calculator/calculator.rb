def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(a)
  if a.length == 0
    0
  else
    a.inject{|sum, x| sum + x}
  end
end

def multiply(arg1, *rest)
  product = arg1
  rest.each do |i|
    product *= i
  end
  product
end

def power(a, b)
  a ** b
end

def factorial(a)
  a.downto(1).reduce(:*) || 1
end

#write your code here
def add (x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  total = 0
  array.each do |e|
    total += e
  end
  total
end

def multiply(x, *y)
  total = x
  y.each do |n|
    total *= n
  end
  total
end

def power(x, y)
  x ** y
end

def factorial(x)
  if x == 1 or x == 0
    return 1
  elsif x < 0
    return "error"
  else
    return x * factorial(x - 1)
  end
end
def factorial(n)
  for i in 1 ... n
  n *= i
  end
  n
end#factorial

def summation(n)
  solution = 0
  n = factorial(n).to_s.split("")
#puts n.inspect
n.each {|num| solution += num.to_i }

solution
end#summation


summation(100)
#factorial(100)

def fib(n)
  fibonacci = [1,2]
  evens = []
  sum = 0
  while fibonacci.last < n
  fibonacci << fibonacci[-1]+fibonacci[-2]
  end

  fibonacci.each {|n| evens << n if n% 2 == 0}
  evens.each {|n| sum += n}

  sum
end

fib(4000000)

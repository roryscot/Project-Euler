def fib(n)
  fibonacci = [1,1,2]

  while fibonacci.last.to_s.length < n
  fibonacci << fibonacci[-1]+fibonacci[-2]
  end

fibonacci.index(fibonacci.last) + 1

end

fib(1000)

def reducer(n)
  root = Math.sqrt(n)
  puts root
  i = 2
  while i < (root)
  n /= i if n % i == 0 unless (n / i)== 1
  #puts n
  i += 1
  end
  return n if prime?(n)
  n = Math.sqrt(n) if n/Math.sqrt(n) == 0
n
end#reducer(n)

reducer(600851475143)

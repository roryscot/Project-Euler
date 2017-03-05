  def n_prime(n)
  primes = []

  i = 2
  while primes.length < n
  primes << i if is_prime?(i)
  i+= 1
  end
  return primes.last
  end
=begin
  def is_prime?(number)
    i = 2
    while i < number
      if (number % i) == 0
        return false
      end

      i += 1
    end
    return true
  end
=end
def is_prime?(n)
  root = Math.sqrt(n)
 return false if n < 2
 return true if n < 4
 return false if n %2 == 0
 return true if n < 9
 return false if n % 3 == 0
 i = 5
 while i < root
 return false if n % i == 0
 return false if n % (i + 2) == 0
 i += 6
  end
  return true
end#is_prime?(n)

  n_prime(10001)

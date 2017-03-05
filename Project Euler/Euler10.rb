#Sum of Primes 

def sum_of_primes(n)
  sum = 0
  div = (2...n).to_a
  primes = []

 i = 2
 until i >= n/i
 div.delete_if {|x| x % i == 0 }
 i += 1
 end

 for p in 2 ... div[0] ; primes << p if prime?(p) ; end

  primes += div
  primes.each {|s| sum = s + sum }

  sum
end #sum_of_primes(n)

def prime?(num)

  for i in 2 ... num ; return false if num % i == 0 ; end
  return true
end #prime?(num)

sum_of_primes(2000000)

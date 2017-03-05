def divisors_sum(n)
  ds = []
  a = 0
  for d in 1 .. Math.sqrt(n)
  ds << d if n % d == 0
  end
  ds.each {|num| ds << (n/num) unless ds.include?(n/ num) }
  ds.delete(n)
  ds.each {|num| a += num}
  a
end#divisors_sum

def pairs(n)
 b = divisors_sum(n)
 a = divisors_sum(b)
 return a+b if a == n unless a == b
end#pairs

def amicable(n)
  pairs = []
  sum = 0
  for t in 220 ... n
  pairs << pairs(t) unless pairs(t) == nil || pairs.include?(pairs(t))
  end
  pairs.each {|num| sum += num; puts sum }
  sum
end


#prime?(11)
#primes(10000)
#divisors_sum(220)
#pairs(284)
amicable(10000) 

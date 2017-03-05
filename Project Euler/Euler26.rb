#Fractions with prome denominators:
#The length of the repetend (period of the repeating decimal) of 1/p is equal to the order of 10 modulo p. If 10 is a primitive root modulo p, the repetend length is equal to p − 1; if not, the repetend length is a factor of p − 1. This result can be deduced from Fermat's little theorem, which states that 10^(p−1) ≡ 1 (mod p).

def period_length(n)
digits = []
  return 0 if n % 2 == 0 || n % 5 == 0 #A fraction in lowest terms with a prime denominator other than 2 or 5 (i.e. coprime to 10) always produces a repeating decimal.
  i = 1
   #If a is not divisible by p, Fermat's little theorem is equivalent to the statement that a^(p − 1) − 1 is an integer multiple of p
  #So, one less than a prime number with a cyclic period will be divisible by n


  while i < n-1
 digits << ((10**i -1) % n)
 break if ((10**i -1) % n) == 0
  # the power "i" represents the continued longhand division
    i += 1
  end
  1/n.to_f
  digits.length
end#period_length




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

def prime_list(n)
  list = (2..n).to_a

i = 2
 until i >= n/i
 list.delete_if {|x| x % i == 0 }
 i += 1
 end

 for p in 2 ... list[0] ; list << p if is_prime?(p) ; end

list.sort
end#prime_list


def longest_period(n)
  list = prime_list(n)
  p list
  n = 0
  longest = 0
 list.each {|num| (longest, n = period_length(num), num) if period_length(num) > longest}
  n
end#


#prime_list(1000)
longest_period(1000)

def negative?(n)
  n < 0
end#negative

def is_prime?(n)
  n = (n * -1) if negative?(n)
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

primes = (2..999).select {|num| is_prime?(num)}

a = -999

n = 1

a_max = 1
b_max = 1
max_count = 0



while a < 999
b = primes.length - 1
formula = n*(n+a) + primes[b]
count = 0
  while b > 0
  count = 0
  n = 0
    while is_prime?(n*(n+a) + primes[b])
      count +=1
      if count > max_count
        max_count = count
        a_max = a
        b_max = primes[b]
      end
      #puts max_count if a == -61 && primes[b] == 971
      n+=1
    end
    b -= 1
  end
  a += 2
end

"a = #{a_max}, b = #{b_max}, count = #{max_count}, product = #{a_max * b_max}"

#is_prime?(41)

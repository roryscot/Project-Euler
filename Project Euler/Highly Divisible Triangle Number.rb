def triangle_number(n)
  t = (n * (n + 1))/2
end#triangle_number


def sufficient_number(n)
  prime_factorization = (2**4)*(3**4)*(5**4)*(7)*(11)
  triangle_number(n)
  while triangle_number(n) < prime_factorization
  n += 1
  end
  n
end#sufficient_number

def triangle_divisors(n)
  n = triangle_number(n)
divisors = []
squ_rt = Math.sqrt(n)

1.upto(squ_rt){|num| divisors << num if n % num ==0 }

divisors.each {|num| divisors << n / num unless divisors.include?(n / num)}

end#triangle_divisors

def triangle_number_with_500_divisors(n)

  while triangle_divisors(n).length < 500
  n += 1

  puts n, triangle_divisors(n).length
  triangle_divisors(n)
  end
  triangle_number(n)
end


#triangle_divisors(76576500)
#triangle_number(11169)
#sufficient_number(1)
triangle_number_with_500_divisors(11169)

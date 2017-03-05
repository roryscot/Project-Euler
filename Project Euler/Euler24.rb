
def factorial(n)
 for i in 1...n
 n *= i
 end
 n
end#factorial


def permutation_place(n)
  difference = n
  original = [0,1,2,3,4,5,6,7,8,9]
  f = original.size - 1
  count = 1
  #initialize count at 1 to include the most recent permutation
  i = 0
  while i < original.size
  change = difference / factorial(f)
  count += (change * factorial(f))
  difference = (n - count)
  change.times {original[change + i - 1],original[change+i] = original[change+i],original[change+i - 1]; change -= 1}
  p original
  f -=1
  i += 1
  break if difference==0
  end

  original.join.to_i


end#permutation_place

#factorial(9)
permutation_place(1000000)

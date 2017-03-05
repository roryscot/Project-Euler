
  def positive_integers(n)
    sum = 0
    list = sums_of_abundant_numers(n)
    goal = (1..n).to_a - list

    goal.each {|n| sum += n}
   sum
  end#positive_integers

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

def abundant?(n)
  divisors_sum(n) > n
end#abundant

def abundant_numers(n)
(12..n).select {|n| abundant?(n)}
end#abundant_numers

def sums_of_abundant_numers(n)
  sums = []
  list = abundant_numers(n+1)
 list.each {|x| list.each { |y| sum = x + y;
 break if sum > n ;
 sums << sum unless sums.include?(sum)}}
  sums.sort
end#sums_of_abundant_numers




#divisors_sum(12)
#abundant?((20160 - 12))
#abundant_numers(20160)
positive_integers(28123)
#sums_of_abundant_numers(20160)

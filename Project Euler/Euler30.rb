def fifth?(n)
  sum = 0
  digits = n.to_s.split("")
  digits.each {|x| sum += x.to_i**5 ; break if sum > n }
  sum == n
end#fifth

golden_fifths = (999..(6*9**5)).select{|n| fifth?(n)}
golden_fifths.inject(:+)

#fifth?(10000)

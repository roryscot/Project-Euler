def difference(n)

arr = 1.upto(n).to_a
sum = 0
sum_of_squares = 0

arr.each {|n| sum_of_squares += n**2 }

arr.each{|n| sum += n}
 suqare_of_sum = sum**2

suqare_of_sum - sum_of_squares
end

difference(100)

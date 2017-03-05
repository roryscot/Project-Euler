
def digit_sum(n)
sum = 0
nums = []
n.to_s.split("").each {|n| nums<< n}

nums.each {|n| sum += n.to_i }
sum
end

digit_sum(2**1000)

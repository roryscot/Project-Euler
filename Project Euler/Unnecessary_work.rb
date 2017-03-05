def numbers
num = %w{3 7 4 2 4 6 8 5 9 3}
num.map! {|n| n.to_i}.reverse!
num
end#numbers

def triangler
sum = 1
triangle = []
3.times {triangle << sum; sum += 1 }
triangle.reverse!
triangle
end#triangler

def maxes(arr)
  triangle = triangler
maxes = []
(arr.length - 1).times {|n| maxes << [arr[n],arr[n+1]].max if arr.length > 1}
maxes << arr.max if arr.length == 1
#puts "#{maxes.inspect}"
maxes
end #maxes

def paths(arr1, arr2)
paths = [arr1, arr2].transpose.map {|x| x.reduce(:+)} unless arr1 == []
#puts paths.inspect
end#paths

def liner
  lines = {}
  triangle = triangler
  num = numbers
a = 0
i = 0
j = triangle[a]

while a <= triangle.length
line = []
line += num[i..j]
lines [a+1] = line

break if line.length == 1
i += triangle[a] + 1
j += triangle[a]
a += 1
end
lines
end#liner

def maxer
line_hash = liner
#puts line_hash
max_hash = {}
i = 1
while i <= liner.size
max_hash[i] = maxes(line_hash[i])
i += 1
end
max_hash
end#maxer

def sum
max_hash = maxer
line_hash = liner

puts "M_H", max_hash
puts "L_H", line_hash

i = 1
while i < line_hash.size
puts max_hash[i].inspect
puts line_hash[i+1].inspect
puts paths(max_hash[i],line_hash[i+1]).inspect
puts " "
line_hash[i+1] =paths(max_hash[i],line_hash[i+1])
max_hash[i + 1] = maxes(line_hash[i+1])

puts "L_H", line_hash
#puts line_hash[i+1].inspect

i += 1
end

return line_hash[i]
end#sum

sum

#liner

#paths([9, 9, 8], [6, 4, 2])

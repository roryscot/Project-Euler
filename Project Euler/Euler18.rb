def numbers
num = %w{75 95 64 17 47 82 18 35 87 10 20 04 82 47 65 19 01 23 75 03 34 88 02 77 73 07 63 67 99 65 04 28 06 16 70 92 41 41 26 56 83 40 80 70 33 41 48 72 33 47 32 37 16 94 29 53 71 44 65 25 43 91 52 97 51 14 70 11 33 28 77 73 17 78 39 68 17 57 91 71 52 38 17 14 91 43 58 50 27 29 48 63 66 04 68 89 53 67 30 73 16 69 87 40 31 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23}
num.map! {|n| n.to_i}.reverse!
num
end#numbers

def triangler
sum = 1
triangle = []
14.times {triangle << sum; sum += 1 }
triangle.reverse!
triangle
end#triangler

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

def maxes(arr)
  triangle = triangler
maxes = []
(arr.length - 1).times {|n| maxes << [arr[n],arr[n+1]].max if arr.length > 1}
maxes << arr.max if arr.length == 1
maxes
end #maxes

def paths(arr1, arr2)
paths = [arr1, arr2].transpose.map {|x| x.reduce(:+)} unless arr1 == []
end#paths

def maxer
line_hash = liner
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
i = 1
  while i < line_hash.size
  line_hash[i+1] =paths(max_hash[i],line_hash[i+1])
  max_hash[i + 1] = maxes(line_hash[i+1])
  i += 1
  end
return line_hash[i]
end#sum

sum 

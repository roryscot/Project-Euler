def numbers(n)
  arr = []
  sum = 0
  i = 1
  while i < n
    arr << i if i % 3 == 0 || i % 5 == 0
  i += 1
  end

  arr.each {|n| sum += n }
  sum
end

numbers(1000)

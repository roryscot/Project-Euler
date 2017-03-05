def num2word(num)
ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["ones", "tens", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
hundred = "hundred"
thousand = "onethousand"
word = ""

while num > 0
if num >= 1000
 word << thousand
  break
 elsif  num >= 100
   remainder = num % 100
   word << ones[(num - remainder)/100] + hundred
   word << "and" if remainder > 0
   num = remainder
  elsif num >= 20
  remainder = num % 10
  word << tens[(num-remainder)/ 10]
  num = remainder
  elsif num > 0
  word << ones[num]
  num = 0
  end
end
word
end#num2word

def sum(n)
sum = 0
for num in 1 .. n
sum += num2word(num).length
end
sum
end#sum(n)

sum(1000)

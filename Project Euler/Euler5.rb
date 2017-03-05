def number
  product = 1
  arr = [2,2,3,3,4,5,7,11,13,17,19]
  arr.each {|i| product = product * i.to_f }

  return product.to_i if test?(product)
end

def test?(n)
  t = (1..20).to_a
  t.all? {|i| n % i == 0}
end

number

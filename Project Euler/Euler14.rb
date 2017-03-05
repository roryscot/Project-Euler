
def hash_path(num)
collatz_hash = Hash.new(0)
for n in (num/2) .. num
collatz_hash[n] = collatz(n)
end
#puts collatz_hash
collatz_hash.max_by {|k,v| v}
end#hash_path(num)

def collatz(n)
chain = [n]
until n == 1
  if n % 2 == 0;
    n = (n/2)
    chain << n
  else n = (3*n + 1)
  chain << n
  end
end
chain.length
end#collatz(n)

#collatz(13)
hash_path(1000000)

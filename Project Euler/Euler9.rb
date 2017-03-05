


#Divisors.include?(x) == true && x < sqrt(s)
# (500/x) % k == 0
# x < k < 2m

def sptriplet(n)
  divisors_of_500 = []
1.upto(500) {|n| divisors_of_500 << n if 500 % n == 0}
divisors_of_500.inspect

  solutions = []
  for x in divisors_of_500
    for z in divisors_of_500
      if (x < z && z < 2*x) && n%(x*z) == 0
        y = z - x
        k = ((n/2) / x) / z

        a = k*(x*x-y*y)
        b = 2*k*x*y
        c = k*(x*x+y*y)

        solutions << [a,b,c]
      end
    end
  end

  product = 1
  solutions.map! {|arr| arr.sort}
  solutions.uniq!
  solutions[0].each {|num|product *= num}
  product

end#sptriplet(n)

sptriplet(1000)

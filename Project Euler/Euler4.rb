def palindrome_numbers(a,b)
  palindromes = []
 while b > 100
  while a > 100
      if palindrome?(a*b)
         palindromes << (a*b)
      end
      a -= 1
    end
    a = 999
    if palindrome?(a*b)
      palindromes << (a*b)
    end
   b -= 1
  end

  return palindromes.max
end

def palindrome?(number)
  string = number.to_s.split("")
  return false if string != string.reverse
  return true
end

palindrome_numbers(999, 999)

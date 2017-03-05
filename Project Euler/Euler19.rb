=begin

#first_day[1,32,60,91, 121, 152, 183, 214,245,275,306,336]
#first_leap = [1,32,61,92,122,153,183,214,245,275,306,336]



def count_Sundays(year_start, year_end)
  count = 0
  for year in year_start .. year_end
  count += sundays_in_a_year(year)
  end
  count / 7
end#count_Sundays(year_start, year_end)

def sundays_in_a_year(year)
  firsts = first_days(year)
  year_length = 365;  year_length = 366 if leap_year?(year)

  count = 0
  days = { 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0, 7 => 0}

  d = first_weekday(year)


  a = d
  i = 1
  while i < year_length
  days[a] = i
   #puts days[7]if firsts.include?(days[7])
  count += 1 if firsts.include?(days[7])

  a += 1
  a = 1 if a == 8
  i += 1
  end
 count
end#sundays_in_a_year

def leap_year?(year)
  return false unless year % 4 == 0
  return false if year % 100 == 0 unless year % 400 == 0
  return true
end#leap_year

def first_days(year)
  months = [31,28,31,30,31,30,31,31,30,31,30,31]
  sum = 1
  firsts = [1]
   unless leap_year?(year)
  months[1] = 28
  year_length = 356
  else
  months[1] = 29
  year_length = 366
  end
  months.each {|month| sum+= month; firsts << sum}
  return firsts
end#first_days(year)

def first_weekday(year)
  if year < 1908
  d = ((year - 1900) + 1)
  d += 1 if leap_year?(year)
  d = 1 if d == 8
  else
  d = (year - 1900) % 10 % 7
  d += 1 if leap_year?(year)
  d = 1 if d == 8
  end
  d
end



#leap_year?(1904)
#first_days(1904)
#sundays_in_a_year(1900)
count_Sundays(1901, 2000)

=end

require 'date'
puts Date.new(1901,1,1).upto(Date.new(2000,12,31)).find_all { |d| d.mday == 1 && d.wday == 0 }.count

def leap_year?(year)
#leap year if divisible by 4, but not 100, unless divisible by 400
  if year%400 == 0 || (year%4 == 0 && year%100 != 0)
    true
  else
    false
  end
end

puts leap_year? 2001
puts leap_year? 1600
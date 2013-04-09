def factorial(n)
  factorial = 1
  counter = 1
  while counter <= n
    factorial = factorial * counter
    counter = counter+1
  end  
  factorial
end

puts factorial(5) #=> 5 * 4 * 3 * 2 * 1 == 120
puts factorial(0)
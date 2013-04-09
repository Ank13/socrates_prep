#Multiples of 3 should be replaced with the string "Fizz"
#Multiples of 5 should be replaced with the string "Buzz"
#Multiples of 15 should be replaced with the string "FizzBuzz"

def super_fizzbuzz(array)
  fizzbuzz = array.collect{|x| 
        if x%15 == 0
          "FizzBuzz"
        elsif x%5 == 0
          "Buzz"
        elsif x%3 == 0 
          "Fizz"
        else 
          x
        end}
  return fizzbuzz.inspect
end


puts super_fizzbuzz([1,2,3])  # => [1, 2, "Fizz"]
puts super_fizzbuzz([1,2,5])  # => [1, 2, "Buzz"]
puts super_fizzbuzz([1,2,15]) # => [1, 2, "FizzBuzz"]
puts super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]


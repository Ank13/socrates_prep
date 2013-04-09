def largest_integer(array)
  new_array = array.sort
  new_array.last
end

puts largest_integer([-10, 0, 10])    # => 10
puts largest_integer([-10, -20, -30]) # => -10
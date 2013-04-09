def smallest_integer(array)
  nil if array[0] == nil
  array.min
end

puts smallest_integer([-10, 0, 10])    # => -10
puts smallest_integer([-10, -20, -30]) # => -30
puts smallest_integer([])
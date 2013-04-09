
def count_between(array, lower_bound, upper_bound)
  array.count{|x| x >= lower_bound && x <= upper_bound}
end

puts count_between([1,2,3], 0, 100)      # => 3
puts count_between([-10, 1, 2], 0, 100)  # => 2
puts count_between([10, 20, 30], 10, 30) # => 3
puts count_between([], -100, 100)        # => 0
puts count_between([0], 0, 0)            # => 1
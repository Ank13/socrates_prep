
def add_ten_to_each(array)
  new_array = []

  array.each do |i|
    new_array[i-1] = (i + 10)
  end

  new_array
end

my_array = [2,2,3,4,5]
puts "my_array is #{my_array.inspect}"


other_array = add_ten_to_each(my_array)
puts "other_array is now #{other_array.inspect}"

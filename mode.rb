def mode(array)
  max = 0
  most_freq_array = []

  array.length.times do |i|   
    x = array.count(array[i])
    max = x if x >= max 
  end 

  array.length.times do |i|  
    most_freq_array.push array[i]  if array.count(array[i]) == max
  end
  
  most_freq_array.uniq.inspect
end 


puts mode([1, 2, 3, 4, 5, 5, 7])  #=> 5
puts mode([4, 4, 5, 5, 6, 6, 6, 7, 5]) #=> 5, 6

puts mode([2,2,3,3,1,2])     # => [2]
puts mode([1,2,3,3])         # => [3]
puts mode([4.5, 0, 0])       # => [0]
puts mode([1.5, -1, 1, 1.5]) # => [1.5]
puts mode([1,1,2,2])         # => [1,2]
puts mode([1,2,3])           # => [1,2,3], because all occur with equal frequency


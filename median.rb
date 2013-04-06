def median(array)
 len = array.length  
 if len%2 == 0
   med = (array[len/2] + array[(len/2)-1])/2.to_f
 else 
   med = array[len/2]
 end
 med
end

puts median([1,2,3])      # => 2
puts median([4.5, 0, -1]) # => 0
puts median([-100, 100])  # => 0.0
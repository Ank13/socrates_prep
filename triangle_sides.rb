def valid_triangle?(a, b, c)
  #none can be 0, and any side < other two, and any side > difference between other two
  if a == 0 || b == 0 || c == 0
   return false
  elsif a>(b+c) || b>(a+c) || c>(a+b)
    return false
  elsif a<(b-c).abs || b<(a-c).abs || c<(a-b).abs
    return false
  else
    true
  end
end

puts valid_triangle?(0,0,0) # => false, because a triangle can't have 0-length sides
puts valid_triangle?(1,1,1) # => true, an equilateral triangle
puts valid_triangle?(3,4,5) # => true, a right triangle
puts valid_triangle?(4,3,5) # => true, the same right triangle
puts valid_triangle?(5,3,4) # => true, the same right triangle
puts valid_triangle?(10, 10, 100) #=> false, no such triangle exists
def is_fibonacci?(i)
  stack = [0,1] 
  while stack[-1] <= i
    stack.push(stack[-1] + stack[-2])
  end  
  if stack.include?(i) 
    true
  else 
    false
  end 
end

puts is_fibonacci? 1
puts is_fibonacci? 19
puts is_fibonacci? 8
puts is_fibonacci? 144
puts is_fibonacci? 10946

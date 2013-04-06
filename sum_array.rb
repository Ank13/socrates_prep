def total(array)
  total = 0
  array.each do |part|
    total += part
  end
  total
end


array =[1,2,3]
puts total(array)
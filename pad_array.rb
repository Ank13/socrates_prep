class Array

  def pad!(min_size, value = nil)
    times = min_size - self.length
    if times > 0
      times.times do
         self.push(value)
       end 
     end 
     return self
  end
  
  def pad(min_size, value = nil)
    array = self.clone
    times = min_size - array.length
    if times > 0
      times.times do
         array.push(value)
       end 
     end 
     return array
  end

end 



array1 = [5,'t',3]
array1.pad(6,'orange')
puts
[1,2,3].pad(5, 'apple')

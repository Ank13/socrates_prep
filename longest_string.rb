def longest_string(array)
  nil if array.empty?
  array.max {|a,b| a.length <=> b.length}
end


puts longest_string([]) # => nil
puts longest_string(['cat', 'zzzzzzz', 'apples'])  # => "zzzzzzz"

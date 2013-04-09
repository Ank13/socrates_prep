def shortest_string(array)
  nil if array.empty?
  array.min_by {|x| x.length}
end


puts shortest_string([]) # => nil
puts shortest_string(['cat', 'zzzzzzz', 'apples'])  # => "zzzzzzz"

def reverse_words(str)
  array = str.split(' ')
  new_array = array.map {|x| x.reverse}
  new_array.join(' ')
end


string =  'Hello how are you?'
puts reverse_words string
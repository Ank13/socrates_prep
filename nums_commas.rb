def separate_comma(number)
  number.to_s.reverse.gsub(/(\d{3})(?=\d)/,'\0,').reverse
end

puts separate_comma(510299)    # => "1,000"
puts separate_comma(1000)    # => "1,000"
puts separate_comma(1000000) # => "1,000,000"
puts separate_comma(0)       # => "0"
puts separate_comma(100)     # => "100"

# \0 returns the piece being looked at by gsub
# \d = number
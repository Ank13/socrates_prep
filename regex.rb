def has_ssn?(string) # Determine whether a string contains a Social Security number.
  if string.scan(/\d{3}-\d{2}-\d{4}/).empty? == false
    return true
  else
    false
  end
end

def grab_ssn(string) # Return the Social Security number from a string.
  string.match(/\d{3}-\d{2}-\d{4}/)
  $&
end

def grab_all_ssns(string) # Return all of the Social Security numbers from a string.
  string.scan(/\d{3}-\d{2}-\d{4}/)
end

def hide_all_ssns(string) # Obfuscate all of the Social Security numbers in a string. Example: XXX-XX-4430.
  x = string.gsub(/(\d{3})(?=-)/,'XXX')
  y = x.gsub(/(\d{2})(?=-)/,'XX')
end

def format_ssns(string)# Ensure all of the Social Security numbers use dashes for delimiters.
  string.gsub(/(\d{3})([.-]?)(\d{2})([.-]?)(\d{4})/, '\1-\3-\5'   )
end  # Example: 480.01.4430 and 480014430 would both be 480-01-4430.

string1 = '123-45-6789'
string2 = 'This is the number 123-45-6789 and another 321-54-9876'
string3 = 'This is the number 123-456789 here'
string4 = '123-45-6789'
string5 = '123456789'
string6 = '123.45.6789'

puts 'has ssn?'
puts has_ssn? string1
puts has_ssn? string2
puts has_ssn? string3
puts
puts 'grab ssn'
puts grab_ssn string1
puts grab_ssn string2
puts grab_ssn string3
puts
puts 'grab all ssn'
puts grab_all_ssns string1
puts (grab_all_ssns string2).join(', ')
puts grab_all_ssns string3
puts
puts 'hide ssn'
puts hide_all_ssns string1
puts hide_all_ssns string2
puts hide_all_ssns string3
puts
puts 'format'
puts format_ssns string4
puts format_ssns string5
puts format_ssns string6

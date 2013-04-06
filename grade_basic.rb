def get_grade(average)
  case average
    when 90..100
      'A'
    when 80..89
      'B'
    when 70..79
      'C'
    when 60..69
      'D'
    when 0..59
      'F'
    else
     'error'
    end
end

puts get_grade(73)
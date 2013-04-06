def get_grade(scores)
  sum = 0
  scores.each do |score|
    sum += score
  end
  average = sum/scores.length
  
  case average
    when 90..100
      'A'
    when 80..89
      'B'
    when 70..79
      'C'
    when 60..69
      'D'
    when 50..59
      'E'
    when 0..49
      'F'
    else 
      'Error'
    end

end

grades =[100,90,95]
puts get_grade(grades)
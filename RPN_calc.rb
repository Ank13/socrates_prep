#this doesn't work correctly 

class RPNCalculator
     
  def evaluate(string)
    array = string.split(' ')
    calc_array = []    
    spot = 0
    result= 9999999999
    newresult =0
    
    3.times do
      calc_array.push array[spot]
      spot += 1  #0+1+1+1= 3
    end
    
   while true
     if array.length == 1
        return array[0] 
        break
      end
          
      if calc_array[-1] == '+'    
        newresult = calc_array[-3].to_i + calc_array[-2].to_i
      elsif calc_array[-1] == '*'
        newresult = calc_array[-3].to_i * calc_array[-2].to_i
      elsif calc_array[-1] == '-'
        newresult = calc_array[-3].to_i - calc_array[-2].to_i
      end
      
      if newresult != result
        result = newresult
        3.times do
          calc_array.pop
        end
        calc_array.push result
      end
      
      if array[spot] == nil
        return calc_array.last
        break
      else 
        calc_array.push array[spot]
        spot += 1
      end
    end 
  end 
end

calc = RPNCalculator.new
puts calc.evaluate('1 -1 +') #==>0
puts calc.evaluate('1 2 + 1 +')   # => 4  
puts calc.evaluate('1 2 +')   # => 3
puts calc.evaluate('2 5 *')   # => 10
puts calc.evaluate('50 20 -') # => 30
puts calc.evaluate('70 10 4 + 5 * -') # => 0
puts calc.evaluate('0')  #=> 0
puts calc.evaluate('-1') #=> -1



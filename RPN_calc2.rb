class RPNCalculator
  
  def evaluate(string)
    array = string.split(' ').reverse
    calc_here = []
    
   return array.last.to_i if array.length == 1 
   while array.length >=1      
      
      while array.last != '+' && array.last != '*' && array.last != '-'  #move numbers until hit +-*
        calc_here.push array.last
        array.pop
      end
      var1 = calc_here.pop.to_i #take the most recent 2 numbers into variables
      var2 = calc_here.pop.to_i

      if array.last=='+'  #do the math operation
        subtotal = var1 + var2
        array.pop
      elsif  array.last=='*' 
        subtotal = var1 * var2
        array.pop
      elsif  array.last=='-' 
        subtotal = var2 - var1
        array.pop
      end
      
      calc_here.push subtotal #put the new subtotal back into the calc_array
    end #while
      calc_here.last
  end #def
end #class

calc = RPNCalculator.new
puts calc.evaluate('1 -1 +') #==>0
puts calc.evaluate('1 2 + 1 +')   # => 4  
puts calc.evaluate('1 2 +')   # => 3
puts calc.evaluate('2 5 *')   # => 10
puts calc.evaluate('50 20 -') # => 30     
puts calc.evaluate('70 10 4 + 5 * -') # => 0  ###
puts calc.evaluate('0')  #=> 0
puts calc.evaluate('-1') #=> -1



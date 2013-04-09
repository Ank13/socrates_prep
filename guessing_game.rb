class GuessingGame
  
  def initialize(answer)
    if answer.is_a? Fixnum 
      @answer = answer
    else 
      puts "Please enter a valid integer."
      exit
    end
  end
  
  def solved?
    @guess == @answer
  end
  
  def guess(guess)
    @guess = guess
    if @guess == @answer
      :correct
    elsif @guess > @answer
      :high
    elsif @guess < @answer
      :low
    else
      "Please enter a valid integer"
    end
  end
end

game = GuessingGame.new(10)
puts game.solved?   # => false
puts game.guess(5)  # => :low
puts game.guess(20) # => :high
puts game.solved?   # => false
puts game.guess(10) # => :correct
puts game.solved?   # => true
puts

game = GuessingGame.new rand(100)
last_guess  = nil
last_result = nil
until game.solved?
  unless last_guess.nil?
    puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end
  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)
end
puts "#{last_guess} was correct!"

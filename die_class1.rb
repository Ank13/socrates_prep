class Die
  def initialize(sides)
    raise ArgumentError.new("No dice buddy!") if sides <1
    @sides = sides
  end
  
  def sides
    @sides
  end
  
  def roll
    @roll = 1+rand(@sides)
  end
end

die = Die.new(6)
puts die.sides # returns 6
puts die.roll # returns a random number between 1 and 6
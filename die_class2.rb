class Die
  def initialize(labels)
    raise ArgumentError.new("No dice buddy!") if labels.length <1
    @sides = labels.length
    @labels = labels
  end
  
  def sides
    @sides
  end
  
  def roll
    @roll = @labels[(rand(@sides))]
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die.sides # still returns the number of sides, in this case 6
puts die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly
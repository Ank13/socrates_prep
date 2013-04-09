class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
    area = @width * @height
  end
  
  def perimeter
    perimeter = (@width*2)+(@height*2)
  end
  
  def diagonal
    diagonal = Math.sqrt((@width**2)+(@height**2)).to_f
  end
  
  def square?
    @height == @width
  end

end

test = Rectangle.new(4,5)
puts test.area
puts test.perimeter
puts test.diagonal
puts test.square?

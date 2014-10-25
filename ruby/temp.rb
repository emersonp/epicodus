class Rectangle
  def initialize(length, width)
    puts "I am a #{length} by #{width} rectangle."
    @length = length
    @width = width
  end

  def square?
    @length == @width
  end

  def length
    @length
  end
end

r = Rectangle.new(5, 3)
puts r.square?
puts r.length

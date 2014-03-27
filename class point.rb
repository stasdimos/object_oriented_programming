class Line
  def initialize (p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def to_s
    "#{@p1}---#{@p2}"
  end
end

class Vector < Line
  def initialize(p1,p2,d)
    super(p1,p2)
    @d = d
  end

end

class Point

  attr_accessor :x, :y

  def initialize(x,y)
    @x = x
    @y = y
  end

  def add(other_point)
    Point.new(@x + other_point.x, @y + other_point.y)
  end

  def to_s
    "(#{@x},#{@y})"
  end
end

line = Line.new(Point.new(2,3), Point.new(4,5))
puts line

v = Vector.new(Point.new(5,7),Point.new(7,5),5)
puts "this is v: #{v}"


# p1 = Point.new(2,3)
# p2 = Point.new(3,2)

# p3 = p1.add(p2)
# puts p3

# p4 = Point.new(p1.x + p2.x, p1.y+p2.y)
# puts p4


require "pry"
class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    kind
  end 
  def kind
    validate_triangle
    if [a, b, c].uniq.length == 1
      :equilateral
    elsif [self.a, self.b, self.c].uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
  def validate_triangle
     
     if [self.a, self.b, self.c].any? { |side| side == 0 }
      raise TriangleError
     end
    if a + b <= c || b + c <= a || a + c <= b
      raise TriangleError
    end
  end
   class TriangleError < StandardError
   end
end

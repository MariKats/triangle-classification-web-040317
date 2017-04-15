class Triangle

  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if
      self.side_a + self.side_b <= side_c || self.side_a + self.side_c <= side_b || self.side_b + self.side_c <= side_a
      raise TriangleError

    elsif
      self.side_a <= 0 && self.side_b <= 0 && self.side_c <= 0
      raise TriangleError

    elsif
      self.side_a == self.side_b && self.side_a == self.side_c
      :equilateral
    elsif
       self.side_a == self.side_b || self.side_a == self.side_c || self.side_b == self.side_c
      :isosceles
    elsif
       self.side_a != self.side_b && self.side_a != self.side_c && self.side_b != self.side_c
      :scalene
    end
  end
end


class TriangleError < StandardError
end

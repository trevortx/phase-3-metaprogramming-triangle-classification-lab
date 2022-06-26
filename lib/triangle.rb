class Triangle
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    sides = [@l1, @l2, @l3].sort
    unique_sides = sides.uniq
    if @l1.ceil | @l2.ceil | @l3.ceil <= 0
      raise TriangleError
    elsif sides[0] + sides[1] <= sides[2]
      raise TriangleError
    elsif unique_sides.length == 3
      :scalene
    elsif unique_sides.length == 2
      :isosceles
    else unique_sides.length == 1
      :equilateral
    end
  end

  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end
end
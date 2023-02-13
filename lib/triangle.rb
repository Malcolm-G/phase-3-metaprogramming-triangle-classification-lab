class Triangle
  attr_accessor :type

  def initialize side1, side2, side3
    if side1<=0 || side2<=0 || side3<=0
      raise TriangleError
    end

    if side1+side2<=side3 || side2+side3<=side1 || side1+side3<=side2
      raise TriangleError
    end

    if side1 == side2 && side2 == side3
      @type = :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      @type = :isosceles
    else
      @type = :scalene
    end
  end

  def kind
    @type
  end

  class TriangleError < StandardError
  end
end

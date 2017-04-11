class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3, :type
  @@sides = []
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @@sides = [@side_1, @side_2, @side_3]
  end

  def kind
    if @@sides.reduce(:+) == 0 || @@sides.any? { |e| e < 0 } || @side_1 + @side_2 <= @side_3 || @side_3 + @side_1 <= @side_2 || @side_2 + @side_3 <= @side_1
      raise TriangleError
    else
      if @side_1 == @side_2 && @side_1 == @side_3
        @type = :equilateral
      elsif @side_2 == @side_3 || @side_1 == @side_3 || @side_1 == @side_2
        @type = :isosceles
      else
        @type = :scalene
      end
      @type
    end
  end


end

class TriangleError < StandardError

  def message
  end

end

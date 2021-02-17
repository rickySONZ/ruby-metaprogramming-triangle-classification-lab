require "pry"

class Triangle
  # write code here


  attr_accessor :sideA, :sideB, :sideC


  def initialize (sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

def kind
  if sideA + sideB <= sideC || sideB + sideC <= sideA || sideA + sideC <= sideB
    raise TriangleError
  elsif sideA <= 0 || sideB <= 0 || sideC <= 0
    raise TriangleError
  elsif sideA == sideB && sideA == sideC
    return :equilateral
  elsif sideA != sideB && sideA != sideC && sideC != sideB
    return :scalene
  else
    return :isosceles

  end
  
  

end

class TriangleError < StandardError
  # triangle error code

end
end
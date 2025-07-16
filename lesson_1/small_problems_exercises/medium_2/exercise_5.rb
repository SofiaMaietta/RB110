# April 18, 2025      Triangle Sides

# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort 
  return :invalid if sides.any? {|side| side == 0} || sides[0] + sides[1] <= sides[2]
  return :equilateral if sides.all? {|side| side == side1}
  return :isosceles if sides.count{|side| side == side1} == 2
  return :scalene 
end 

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
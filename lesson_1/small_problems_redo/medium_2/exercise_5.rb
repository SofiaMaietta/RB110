# May 18, 2025      Triangle Sides 

# A triangle is classified as follows:

# equilateral - All 3 sides are of equal length
# isosceles  -2 sides are of equal length, while the 3rd is different
# scalene - All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# Algorithm: 

# - Create an array called sides which contains all 3 input integers, sorted 
# - Return :invalid if any of the sides are equal to 0 OR if the two smallest sides added together are smaller than the largest side 
# - Elsif all the sides equal side 1, return :equilateral 
# - Elsif two sides are equal, return :isosceles 
# - Else, return scalene 

# Code: 

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort 
  if sides.include?(0) || sides[0] + sides[1] <= sides[2]
    :invalid 
  elsif sides.all? {|side| side == sides[0]}
    :equilateral 
  elsif sides.uniq.count == 2 
    :isosceles 
  else 
    :scalene 
  end 
end 

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
# May 18, 2025      Rotation (Part 3)

# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise. Note that you do not have to handle multiple 0s.

# Algorithm: 

# - Given a method called `max_rotation` which takes one integer as an argument: 
# - Convert the input integer into a string
# - Split the string up into an array of digits
# - Iterate over the array using each_with_index 
# - For each index, slice the array at that index and push that digit to the end of the array 
# - Join the array back into a string 
# - Convert the string into an integer 
# - Return the integer 

# Code: 

def max_rotation(num)
  array = num.to_s.chars
  array.each_with_index do |digit, index|
    array << array.slice!(index)
  end 
  array.join.to_i 
end 

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
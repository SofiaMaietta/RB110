# May 17, 2025      Rotation (Part 2)

# Write a method that can rotate the last n digits of a number. 

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

# Algorithm: 

# - Given a method called `rotate_rightmost_digits` which takes two integers as arguments:
# - Convert the first input int to an array of digits 
# - Initialize a result array to push into
# - Iterate over each number and each index of the array 
# - Push each number of the array into the result array if the index + 1 does not equal the second input int
# - Else, push that number into the first position of the result array 
# - Reverse the result array
# - Join the elements together into a string
# - Convert the string to an integer 
# - Return the integer 

# Code: 

def rotate_rightmost_digits(number, position)
  array = number.digits
  result = []
  array.each_with_index do |num, index|
    if (index + 1) != position
      result << num 
    else
      result.unshift(num)
    end
  end 
  result.reverse.join.to_i
end 


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
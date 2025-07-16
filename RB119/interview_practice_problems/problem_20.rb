# Problem 20 
# 3 minutes to solve 

# Create a method that takes an array of numbers, all of which are the same except one. Find and return the number in the array that differs from all the rest.

# The array will always contain at least 3 numbers, and there will always be exactly one number that is different.

# Algorithm: 

# - Iterate through the input array and select the number whose count is 1 
# - Return the first element of the selected array

# Code: 

def what_is_different(array)
  array.select {|num| array.count(num) == 1}.first
end 

p what_is_different([0, 1, 0]) == 1
p what_is_different([7, 7, 7, 7.7, 7]) == 7.7
p what_is_different([1, 1, 1, 1, 1, 1, 1, 11, 1, 1, 1, 1]) == 11
p what_is_different([3, 4, 4, 4]) == 3
p what_is_different([4, 4, 4, 3]) == 3
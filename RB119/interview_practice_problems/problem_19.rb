# Problem 19
# 3 minutes to solve 

# Create a method that takes an array of integers as an argument and returns the integer that appears an odd number of times. There will always be exactly one such integer in the input array.

# Algorithm: 

# - Iterate through the input array and select the number whose count is odd 
# - From the selected array, return the first element 

# Code: 

def odd_fellow(array)
  array.select { |num| array.count(num).odd? }.first 
end 

p odd_fellow([4]) == 4
p odd_fellow([7, 99, 7, 51, 99]) == 51
p odd_fellow([7, 99, 7, 51, 99, 7, 51]) == 7
p odd_fellow([25, 10, -6, 10, 25, 10, -6, 10, -6]) == -6
p odd_fellow([0, 0, 0]) == 0
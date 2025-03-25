# March 21, 2025

# Write a method that takes two arrays and returns a new array containing elements that appear in both arrays.

## Problem ###

# - Input: two arrays
# - Output: one new array

# Explicit Req:

# - return a new array 
# - it should contain elements that appear in both arrays

### Examples / Test Cases ###

# p find_intersection([1, 2, 3, 4], [3, 4, 5, 6]) == [3, 4]

### Data Structure ###

# Array 

### Algorithm ### 

# - Given a method `find_intersection` which takes two arrays as arguments:
# - Iterate over the first input array using `select`
# - Select those elements from array1 that are included in array2
# - Return the new array that `select` returns 

### Code ###

def find_intersection(arr1, arr2)
  arr1.select { |num| arr2.include?(num) }
end 

p find_intersection([1, 2, 3, 4], [3, 4, 5, 6]) == [3, 4]
p find_intersection([7, 3, 1, 9], [7, 4, 5, 3]) == [7, 3]
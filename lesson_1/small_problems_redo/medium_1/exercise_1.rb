# May 17, 2025      Rotation (Part 1)

# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Algorithm: 

# - Given a method called `rotate_array` which takes one array as an argument:
# - Make a shallow copy of the input array
# - Remove the first element using shift 
# - Append that element onto the end of the input array 
# - Return the new array 

# Code:

def rotate_array(array)
  array = array.clone 
  array << array.shift
end 

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]
p x == [1, 2, 3, 4]
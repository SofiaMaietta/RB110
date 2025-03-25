# March 6, 2025       Does My List Include This?

# Write a method named does_it_include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.


### Problem ### 

# Input: array and search value (any data type)

# Output: boolean value

# Explicit Req:
# - the method should return true if the search value is in the input array and false otherwise
# - do not use the built in include? method

# Implicit Req: 
# - if the input array is empty, automatically return false 
# - the search value can be any data type


### Examples/Test Cases ###

# p does_it_include?([1,2,3,4,5], 3) == true
# p does_it_include?([1,2,3,4,5], 6) == false
# p does_it_include?([], 3) == false
# p does_it_include?([nil], nil) == true
# p does_it_include?([], nil) == false


### Data Structure ###

# Array 


### Algorithm ###

# - Given a method called `does_it_include?` which takes one array and one other object of any data type as arguments: 
# - Iterate over the input array using #any?
# - For each element in the input array, if that element equals the search value, return true, else, return false 

### Code ###

def does_it_include?(array, search_value)
  array.any? { |element| element == search_value }
end 

p does_it_include?([1,2,3,4,5], 3) == true
p does_it_include?([1,2,3,4,5], 6) == false
p does_it_include?([], 3) == false
p does_it_include?([nil], nil) == true
p does_it_include?([], nil) == false
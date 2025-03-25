# March 21, 2025    

# Given a sorted array of consecutive integers, find the missing number in the sequence.

### Problem ###

# Input: array of integers
# Output: integer

### Examples / Test Cases ###

# find_missing([1, 2, 4, 5]) == 3
# find_missing([5, 6, 8, 9, 10]) == 7
# find_missing([1, 3, 4, 5, 6, 7]) == 2


### Data Structure ###

# Array


### Algorithm ###

# - Given a method `find_missing` which takes one array as an argument:
# - Create a range beginning with the first number in the input array and ending with the last number in the input array
# - Iterate over the range 
# - For each number in the range, if the current number is not included in the input array, return that number 

### Code ###

def find_missing(array)
  (array[0]..array[-1]).find { |num| !array.include?(num) }
end 

p find_missing([1, 2, 4, 5]) == 3
p find_missing([5, 6, 8, 9, 10]) == 7
p find_missing([1, 3, 4, 5, 6, 7]) == 2
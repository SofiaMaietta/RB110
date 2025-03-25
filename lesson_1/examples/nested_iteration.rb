# March 11, 2025

# Write a method that takes an array of integers and returns a new array where each element is replaced by the sum of all the numbers in the original array that are smaller than it.

### Algorithm ###

# - Given a method `sum_smaller` which takes one array as an argument:
# - Iterate over the array using `map` which will return a new transformed array
# - For each element in the array:
# - Iterate over the array again by using `select` which will return an array of all numbers that are smaller than the current number
# - Add all those numbers together
# - The sum (the return value of the block) will be what `map` uses for its transformation of the input array
# - Return the new array 

### Code ###

def sum_smaller(array)
  array.map do |current_element|
    array.select do |num|
      num < current_element 
    end.sum
  end 
end 

p sum_smaller([2, 4, 5, 7]) # => [0, 2, 6, 11]
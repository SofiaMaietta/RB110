# Problem 4
# 14 minutes to solve 

# Create a method that takes an array of integers as an argument and returns an array of two numbers that are closest together in value. If there are multiple pairs that are equally close, return the pair that occurs first in the array.

# Main Method Algorithm: 

# - Find all possible pairs of the input array by pushing them into a result array 
# - Sort the result array by the difference between each pair of numbers (from smallest to largest)
# - Return the first pair

# Helper Method Algorithm:

# - Initialize a result array 
# - Iterate over a range of indices from the first element to the second to last `first`
# - Iterate over a range of indices from first plus one going up to the end of the array `last`
# - Retrieve the elements at first and last and push into a subarray 
# - Push the subarray into the result array 
# - Return the result array 

# Code: 

def all_pairs(array)
  result = []
  (0..array.length - 2).each do |first|
    (first + 1..array.length - 1).each do |last|
      result << [array[first], array[last]]
    end 
  end 
  result 
end 

def closest_numbers(array)
  pairs = all_pairs(array)
  pairs.sort_by { |pair| (pair[0] - pair[1]).abs }.first
end 

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 22, 7, 17]) == [12, 7]
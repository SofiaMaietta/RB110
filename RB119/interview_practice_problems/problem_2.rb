# Problem 2
# 8 minutes to solve 

# Create a method that takes an array of integers as an argument. The method should return the minimum sum of 5 consecutive numbers in the array. If the array contains fewer than 5 elements, the method should return nil.

# Algorithm: 

# - Return 0 if the size of the input array is less than 5
# - Push all subarrays of size 5 into a result array 
# - Iterate through the result array using map
# - Sum all the subarrays 
# - Return the smallest sum 

# Code: 

def subarrays_size_five(array)
  result = []
  (0...array.length).each do |first|
    (first...array.length).each do |last|
      slice = array[first..last]
      result << slice if slice.size == 5 
    end 
  end 
  result 
end 

def minimum_sum(array)
  return nil if array.size < 5
  subarrays = subarrays_size_five(array)
  subarrays.map {|subarray| subarray.sum}.min
end 

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, -5]) == 9
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
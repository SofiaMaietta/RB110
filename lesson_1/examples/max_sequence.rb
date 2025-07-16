# April 21, 2025        Max Sequence 

# Create a method max_sequence that finds the contiguous subarray within an array of integers that has the largest sum. Return the sum of that subarray. If all numbers are negative, return 0.

# High Level Algorithm:

# - Find all possible subarrays within the main array 
# - Sum all the numbers in each subarray
# - Find the subarray with the largest sum
# - Return that sum 

def max_sequence(array)
  return 0 if array.none? {|num| num > 0 }

  first = 0
  last = 0
  new_array = []
  loop do 
    loop do
      new_array << array[first..last]
      last += 1
      break if last == array.length 
    end 
    first += 1 
    last = first
    break if first > array.length - 1
  end 

  new_array.map { |subarray| subarray.sum }.max
end 

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6  # [4, -1, 2, 1] has sum 6
p max_sequence([-2, -1, -3, -4, -1, -2, -1, -5, -4]) == 0
p max_sequence([1, 2, 3, 4, 5, -6]) == 15
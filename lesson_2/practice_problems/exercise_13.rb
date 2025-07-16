# March 30, 2025

# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain. The sorted array should look like this:

# [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

result = arr.sort_by do |subarray|
  subarray.select do |num|
    num.odd?
  end 
end

p result == [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]] # => true

# By performing selection on the sub-arrays that we are comparing, we can compare them based on the value of the odd integers alone.

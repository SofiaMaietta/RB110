# March 30, 2025

# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3. The returned array should have the following value:

# [[], [3, 12], [9], [15]]

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

result = arr.map do |subarray|
  subarray.select do |element|
    element % 3 == 0
  end 
end 

p result
# Problem 18 
# 24 minutes to solve 

# Create a method that takes an array of integers as an argument. Determine and return the index N for which all numbers with an index less than N sum to the same value as the numbers with an index greater than N. If there is no index that would make this happen, return -1.

# If you are given an array with multiple answers, return the index with the smallest value. The sum of the numbers to the left of index 0 is 0. Likewise, the sum of the numbers to the right of the last element is 0.

# Data Structures/Algorithm: 

# - Iterate over each element and index of the input array 
# - For each element and index: 
# - If the index is the first index, return that index if all the other numbers in the array besides the first number sum to 0
# - Elsif the index is the last index, return that index if all the other numbers in the arry besides the last number sum to 0
# - For all other indices, check whether the numbers to the left and right sum to equal values 
# - If so, return that index 
# - Else, when done iterating, if nothing else has been returned, return -1


# Code: 

def equal_sum_index(array)
  array.each_with_index do |num, index|
    if index == 0
      return index if array[1..-1].sum == 0
    elsif index == array.length - 1
      return index if array[0..index - 1].sum == 0
    elsif array[0..index - 1].sum == array[index + 1..-1].sum
      return index 
    end 
  end 
  -1 
end 

p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1
p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0
p equal_sum_index([0, 2, 4, 4, 2, 3, 2]) == -1

# The following test case could return 0 or 3. Since we're supposed to return the smallest correct index, the correct return value is 0.
p equal_sum_index([0, 20, 10, -60, 5, 25]) == 0
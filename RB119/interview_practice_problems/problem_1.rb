# Problem 1 
# 10 minutes to solve

# Create a method that takes an array of numbers as an argument. For each number, determine how many numbers in the array are smaller than it, and place the answer in an array. Return the resulting array. When counting numbers, only count unique values. That is, if a number occurs multiple times in the array, it should only be counted once.

# Algorithm: 

# - Iterate over the input array using map `current_num`
# - Iterate over the input array again using count `other_num`
# - Count how many UNIQUE `other_num`s are smaller than `current_num`
# - map returns the new array 

# Code: 

def smaller_numbers_than_current(array)
  array.map do |current_num|
    array.uniq.count do |other_num|
      other_num < current_num
    end 
  end 
end 

p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result
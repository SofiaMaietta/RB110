# April 7, 2025

# Write a method that takes an array of integers as an argument and returns an array of all possible unique pairs. Each pair should be represented as a two-element array.

### Problem ### 

# Rules:
# The order of the pairs does not matter (i.e., `[1, 2]` is considered the same as `[2, 1]`).
# Do not include duplicate pairs.
# If the input array has fewer than 2 elements, return an empty array.

# Input: an array of integers

# Output: a nested array 

### Examples ###

# p pair_combinations([1, 2, 3]) == [[1, 2], [1, 3], [2, 3]]
# p pair_combinations([4, 5, 6, 7]) == [[4, 5], [4, 6], [4, 7], [5, 6], [5, 7], [6, 7]]
# p pair_combinations([8]) == []
# p pair_combinations([]) == []


### Data Structure ### 

# Array 


### Algorithm ### 

# - Given a method `pair_combinations` which takes one array as an argument:
# - Initialize `new_array`
# - Starting with the number at the first index (`first_num`): 
# - Push the following pairs (subarrays) into `new_array`:
# - `first_num` & the element at index 1, first_num` & the element at index 2, first_num` & the element at
#    index 3, etc
# - Break at the end of the array
# - Next, increment the index of `first_num` by one and repeat the step above, adjusting the index of the
#   second element in the pair accordingly
# - Break at the end of the array
# - Return `new_array`

# - (Use nested iteration; the two break statements imply two loops)


## Code ###

# def pair_combinations(arr)
#   return [] if arr.size < 2
#   new_arr = []
#   first_num_index = 0
#   second_num_index = 1
  
#   loop do 
#     loop do 
#       new_arr << [arr[first_num_index], arr[second_num_index]]
#       second_num_index += 1 
#       break if second_num_index == arr.length 
#     end 
#     second_num_index = first_num_index + 2
#     first_num_index += 1 
#     break if first_num_index == arr.length - 1
#   end 
  
#   new_arr
# end 

# p pair_combinations([1, 2, 3]) == [[1, 2], [1, 3], [2, 3]]
# p pair_combinations([4, 5, 6, 7]) == [[4, 5], [4, 6], [4, 7], [5, 6], [5, 7], [6, 7]]
# p pair_combinations([4, 5]) == [[4, 5]]
# p pair_combinations([8]) == []
# p pair_combinations([]) == []

### Version 2 ###

def pair_combinations(array)
  new_array = []
  first_num_index = 0
  second_num_index = 1
  # incrementing the first number
  (0..array.length - 2).each do |num| 
    # incrementing the second number
    (0..array.length - 2).each do |num| 
      new_array << [array[first_num_index], array[second_num_index]]
      second_num_index += 1
    end 
    first_num_index += 1
    second_num_index = first_num_index + 1
  end 

  new_array 
end 

p pair_combinations([1, 2, 3]) # == [[1, 2], [1, 3], [2, 3]]
# p pair_combinations([4, 5, 6, 7]) == [[4, 5], [4, 6], [4, 7], [5, 6], [5, 7], [6, 7]]
# p pair_combinations([4, 5]) == [[4, 5]]
# p pair_combinations([8]) == []
# p pair_combinations([]) == []
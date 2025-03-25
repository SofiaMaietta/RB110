# March 7, 2025     Halvsies

# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

### Problem ### 

# Input: one array

# Output: one nested array containing two sub-arrays

# Explicit Req:
# - the first sub-array of the output should contain the first half of the original array
# - the second sub-array of the output should contain the second half of the original array 
# - if the original array contains an odd number of elements, the middle element should be in the first sub-array

# Implicit Req: 
# - if the input array is empty, return two empty sub-arrays
# - if there is only one element in the input array, put the element in the first sub-array and make the second sub-array empty


### Examples/Test Cases ###

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
# p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
# p halvsies([5]) == [[5], []] # true
# p halvsies([]) == [[], []] # true


### Data Structure ###

# Array


### Algorithm ###

# - Given a method `halvsies` which takes one array as an argument:
# - Create three empty arrays: `main_array`, `sub_array_1`, and `sub_array_2` 
# - Initialize a local variable `halfway` which references the size of the array divided by two 
# - Iterate over the input array
# - If the index of the current element is less than or equal to `halfway`, push it into the first sub-array 
# - Else, push the current element into the second sub-array
# - Push `sub_array_1` and `sub_array_2` into `main_array`
# - Return `main_array`


### Code ###

def halvsies(input_array)
  main_array = []
  sub_array_1 = []
  sub_array_2 = []

  halfway = input_array.size / 2 

  input_array.each_with_index do |num, index|
    if input_array.size.odd?
      if index <= halfway 
        sub_array_1 << num 
      else 
        sub_array_2 << num 
      end 
    else 
      if index < halfway 
        sub_array_1 << num 
      else 
        sub_array_2 << num 
      end 
    end
  end

  main_array << sub_array_1 << sub_array_2 
end 

p halvsies([1, 2, 3, 4])  == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true

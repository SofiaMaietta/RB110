# March 9, 2025       Sum of Sums

# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

### Problem ### 

# Input: array of integers
# Output: integer

# - Get each leading subsequence from the array 
# - Sum each of them
# - Add all of the sums together 
# - Return this final value

### Algorithm ### 

# - initialize a new array called `result`
# - create a loop
# - add all the elements of the input array together and push the sum into the new array 
# - pop off the last element 
# - repeat this process
# - break out of the loop when the input array is empty 
# - sum all the numbers in the new array
# - return this value 


### Code ###

def sum_of_sums(input_array)
  array = input_array.dup
  result = []
  loop do 
    result << array.sum 
    array.pop 
    break if array.empty? 
  end 
  result.sum 
end 

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
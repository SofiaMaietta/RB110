# March 21, 2025

# Write a method that takes an array of integers and returns a new array containing the two numbers that have the smallest difference between them.



### Problem ### 

# Input: an array of integers
# Output: a new array of two integers

# Explicit Req:

# - the returned array must contain the two numbers from the input array that are the closest together

# Questions:

# What if there are multiple sets of numbers that have the same smallest difference?



### Examples / Test Cases ###

# p smallest_difference([5, 25, 15, 11, 20]) == [11, 15]



### Data Structure ###

# - Array



### Algorithm ###

# - Given a method `smallest_difference` which takes one array as an argument:
# - Sort the input array from smallest to largest
# - Create a loop
# - On each iteration, subtract the previous number from the current number 
# - Keep track of the current difference and update that varaible if a smaller difference is found
# - Keep track of and update the pair of numbers with the smallest difference 
# - Return the pair with the smallest difference


### Code ###

def smallest_difference(input_array)
  array = input_array.sort
  last = 0
  now = 1 
  smallest_difference = array[now] - array[last]
  smallest_pair_first = array[last]
  smallest_pair_second = array[now]

  loop do 
    current_difference = array[now] - array[last]
    if current_difference < smallest_difference
      smallest_difference = current_difference 
      smallest_pair_first = array[last]
      smallest_pair_second = array[now]
    end 
    last += 1 
    now += 1 
    break if now == array.size
  end 
  return smallest_pair_first, smallest_pair_second
end 

p smallest_difference([7, 23, 11, 18, 14, 22, 16, 29]) == [22, 23]
p smallest_difference([5, 25, 15, 11, 20]) == [11, 15]
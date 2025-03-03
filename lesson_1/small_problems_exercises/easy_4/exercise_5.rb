# March 2, 2025     Multiples of 3 and 5

# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.


### Problem ###

# Input: an integer
# Output: an integer

# Explicit Req:
# - the method must find all multiples of 3 OR 5 that lie between 1 and the input integer 
# - the method must then compute and return the sum of those multiples


# Implicit Req:
# - the input integer can be considered a multiple if it is evenly divisible by 3 or 5
# - the input integer cannot be negative
# - if the current integer is a multiple of both 3 and 5, like 15, only count it once



### Examples/Test Cases ###

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168


### Data Structure ###

# Array


### Algorithm ###

# - Given a method `multisum` that takes one integer as an argument:
# - Create an empty array called `multiples`
# - Create an inclusive range between 1 and the input integer 
# - Iterate over that range
# - For each integer in the range, check whether it is a multiple of 3 or 5
# - (if the current integer is a multiple of both 3 and 5, like 15, only count it once)
# - If the current integer is a multiple of either 3 or 5, push the integer into the `multiples` array 
# - Sum all the integers of `multiples` 
# - Return the result


### Code ###

def multisum(int)
  multiples = []
  (1..int).each do |num|
    multiples << num if num % 3 == 0 || num % 5 == 0
  end 
  multiples.sum # or multiples.inject(:+)
end 

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
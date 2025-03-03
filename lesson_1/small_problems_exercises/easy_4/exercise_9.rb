# March 2, 2025     Convert a Number to a String!

# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.


### Problem ###

# Input: an integer greater than or equal to 0
# Output: a string representing the input integer

# Explicit Req:
# - convert an integer to its string representation 
# - do not use any built in conversion methods in Ruby


### Examples/Test Cases ###

# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'


### Data Structure ### 

# Hash, Array


### Algorithm ###

# - Given a method `integer_to_string` which takes one integer as an argument:
# - Create a hash called `numbers`
# - The keys should be each integer from 0-9, and the values should be each numeric value from 0-9 as a string
# - Initialize an empty string, `string`


### Code ###

def integer_to_string(number)

  numbers = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
  }

  array = []

  loop do 
    number, remainder = number.divmod(10)
    array << remainder
    break if number == 0
  end

  array.reverse.each_with_object('') do |int, str|
    str << numbers[int]
  end
end 

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
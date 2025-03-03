# March 3, 2025       Convert a Signed Number to a String!

# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.


### Problem ### 

# Input:
# Output: 

# Explicit Req:

# Implicit Req:


### Examples/TestCases ###

# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'


### Data Structure ###


### Algorithm ###


### Code ###

def signed_integer_to_string(number)

  numbers = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
  }

  array = []

  if number < 0
    sign = "-"
  elsif number > 0 
    sign = "+"
  else 
    sign = ""
  end

  number = number.abs

  loop do 
    number, remainder = number.divmod(10)
    array << remainder
    break if number == 0
  end

  result = array.reverse.each_with_object('') do |int, str|
    str << numbers[int]
  end
  result.prepend(sign)
end 

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
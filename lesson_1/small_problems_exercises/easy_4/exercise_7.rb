# March 2, 2025     Convert a String to a Number!

# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

### Problem ###

# Input: string
# Output: integer 

# Explicit req:
# - all input characters in the string must be numeric 
# - must not use the built in Ruby methods
# - must convert the input string to an integer and return that integer 


### Examples/Test Cases ###

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570


### Data Structure ###

# Integer / String 


### Algorithm ### 

# - Given a method `string_to_integer` that takes one string as an argument:
# - Create a hash called `numbers`
# - The keys should be each numeric value from 0-9 as a string, and the values should be each integer from 0-9
# - Reverse the input string
# - Iterate over the input string, and for each character in the string, return the value for the corresponding key
# - (ex: '1' would return 1)
# - Then take that value, and multiply it by `multiplier` which initially references 1
# - Add the result to an array
# - Multiply `multiplier` by 10 for each incrementation
# - Once all characters of the string have been iterated over, sum all the values in the array
# - Return the sum 


### Code ###

def string_to_integer(string)
  numbers = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
  }
  multiplier = 1
  array = []
  string.reverse.each_char do |char|
    array << numbers[char] * multiplier
    multiplier *= 10
  end
  array.sum
end 

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
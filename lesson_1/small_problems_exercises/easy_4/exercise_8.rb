# March 2, 2025     Convert a String to a Signed Number!

# In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

### Problem ###

# Input: a string of digits, which may contain a leading + or - sign
# Output: an integer 

# Explicit Req:
# - take the input string and convert it to the equivalent integer
# - if the input string contains -, return a negative number 
# - if the input string contains +, return a positive number 
# - if the input string contains no sign, return a positive number
# - do not use any built in Ruby methods

# Implicit Req: 
# - the string will always contain numeric characters


### Examples/Test Cases ### 

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100


### Data Structure ###

# String / Integer / Array


### Algorithm ### 

# - Given a method `string_to_signed_integer` which takes one string as an argument:

# - Create a hash called `numbers`
# - The keys should be each numeric value from 0-9 as a string, and the values should be each integer from 0-9

# - If the input string contains a positive sign:
  # - remove the positive sign 
  # - make multiplier positive
# - If the input string contains no sign: 
  # - make multiplier positive
# - If the input string contains a negative sign:
  # - remove the negative sign
  # - make multiplier negative

# - Reverse the input string
# - Iterate over the input string, and for each character in the string, return the value for the corresponding key
# - (ex: '1' would return 1)
# - Then take that value, and multiply it by `multiplier` which initially references 1
# - Add the result to an array
# - Multiply `multiplier` by 10 for each incrementation
# - Once all characters of the string have been iterated over, sum all the values in the array
# - Return the sum 


### Code ###

def string_to_signed_integer(string)
  numbers = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
  }

  if string.start_with?("+")
    string.slice!(0)
    multiplier = 1
  elsif string.start_with?("-")
    string.slice!(0)
    multiplier = -1
  else 
    multiplier = 1
  end 
  
  array = []

  string.reverse.each_char do |char|
    array << numbers[char] * multiplier
    multiplier *= 10
  end
  array.sum
end 


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
p string_to_signed_integer('-98763') == -98763
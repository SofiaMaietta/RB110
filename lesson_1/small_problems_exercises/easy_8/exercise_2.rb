# March 10, 2025        Leading Substrings 

# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.


### Problem ### 

# Input: string
# Output: array of strings

# Explicit Req:
# - Return a list of all substrings of the input string that start at the beginning of the input string
# - The return value should be arranged in order from shortest to longest substring


### Examples / Test Cases ### 

# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


### Algorithm ### 

# - Create a loop 
# - Initialize an empty array
# - Take the input string and append that into the array 
# - Pop off the last character of the string 
# - Repeat this process 
# - Break out of the loop when the input string is empty 
# - Reverse the array 
# - Return the array


### Code ### 

def leading_substrings(input_string)
  string = input_string.dup
  array = []
  loop do 
    array << string
    string = string.chop
    break if string.empty?
  end 
  array.reverse
end 

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
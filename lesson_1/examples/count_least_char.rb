# April 25, 2025        Least Common Character

# Write a method that takes a string as an argument and returns the character that occurs least often in the string. If there are multiple characters with the same lowest count, return the one that appears first in the string.

# Problem 

# input: one string 
# output: one string representing the character that occurs the least amount of times 

# rules:
# - If there are multiple characters with the same lowest count, return the one that appears first in the string

# Examples 
    
# p least_common_char("Hello World") == "H"
# p least_common_char("Peter Piper picked a peck") == "t"
# p least_common_char("Mississippi") == "M"

# Data Structure 

# String - array - string 


# Algorithm

# Given a method `least_common_char` which takes one string as an argument:

# - Split up the input string into an array of characters
# - Initialize an empty hash
# - For each character in the string:
# - Make that character the key of the hash
# - Each value will be the number of times that character appears in the string 
# - Sort this completed hash by values (from smallest to largest)
# - This will return a nested array with the key value pairs as elements of the inner arrays 
# - Return the first element from the first subarray which represents the character that appears the least number of times 
# - If multiple characters appear the least number of times, this will select the one that appears first 

# Code 

def least_common_char(string)
  result = string.chars.each_with_object({}) do |char, hash|
    hash[char] = string.count(char)
  end 
  result.sort_by { |_, v| v }[0][0]
end 

p least_common_char("Hello World") == "H"
p least_common_char("Peter Piper picked a peck") == "t"
p least_common_char("Mississippi") == "M"
p least_common_char("sofia is my first name") == "o"
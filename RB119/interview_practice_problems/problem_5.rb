# Problem 5 
# 7 minutes to solve 


# Create a method that takes a string argument and returns the character that occurs most often in the string. If there are multiple characters with the same greatest frequency, return the one that appears first in the string. When counting characters, consider uppercase and lowercase versions to be the same.

# Algorithm: 

# - downcase the input string 
# - break it up into an array of chars 
# - iterate over the array of chars
# - find the character that occurs the most times and return it 

# Code: 

def most_common_char(string)
  array = string.downcase.chars 
  array.max_by {|char| array.count(char)}
end 

p most_common_char('Hello World') == 'l'
p most_common_char('Mississippi') == 'i'
p most_common_char('Happy birthday!') == 'h'
p most_common_char('aaaaaAAAA') == 'a'

my_str = 'Peter Piper picked a peck of pickled peppers.'
p most_common_char(my_str) == 'p'

my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
p most_common_char(my_str) == 'e'
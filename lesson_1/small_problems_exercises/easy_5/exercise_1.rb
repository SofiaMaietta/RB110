# March 3, 2025     ASCII String Value

# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)


### Problem ### 

# Input: string
# Output: integer 

# Explicit Req:
# - determine and return an integer representing the sum of the ASCII values of every character in the string 
# - use the String#ord method

# Implicit Req:

# - Do not mutate the input string



### Test Cases/Examples ###

# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0


### Data Structure ###

# String


### Algorithm ### 

# - Given a method `ascii_value` which takes one argument, a string:
# - Iterate over the input string
# - Within the block, call the #ord method for each character in the string
# - Sum up all the values returned by the block
# - Return the sum


### Code ###

def ascii_value(string)
  string.each_char { |char| char.ord }.sum
end 

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
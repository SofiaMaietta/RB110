# March 1, 2025        Short Long Short

# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

### Problem ### 

# Input: two strings
# Output: one string

# Explicit Requirements:
# - the input must be two strings of different lengths
# - the method must determine the longest of the two strings 
# - the method must concatenate the shorter string, the longer string, and the shorter string

# Implicit Requirements: 

# - the method should not mutate the original strings but return a new string
# - one of the input strings may be empty

### Examples/Test Cases ###

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"


### Data Structure ### 

# String 


### Algorithm ###

# - Given a method called `short_long_short` which takes two strings as arguments:
# - Find the longest string using the `length` method
# - If the first string is longer than the second string, save `string_1` as `longer_string` and `string_2` as `shorter_string`
# - Else, save `string_2` as `longer_string` and `string_1` as `shorter_string`
# - Next, concatenate `shorter_string` with `longer_string` with  `shorter_string`
# - Return the result 


### Code ###

def short_long_short(str1, str2)
    if str1.length > str2.length 
        longer_string = str1 
        shorter_string = str2 
    else 
        longer_string = str2
        shorter_string = str1 
    end 
    shorter_string + longer_string + shorter_string 
end 

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
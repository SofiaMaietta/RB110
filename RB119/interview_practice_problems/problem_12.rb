# Problem 12
# 4 minutes to solve 

# Create a method that takes a string as an argument and returns true if the string is a pangram, false if it is not.

# Pangrams are sentences that contain every letter of the alphabet at least once. For example, the sentence "Five quacking zephyrs jolt my wax bed." is a pangram since it uses every letter at least once. Note that case is irrelevant.

# Algorithm: 

# - Iterate over a range of letters in the alphabet
# - If all letters in the range are included in the input string, return true, else, return false

# Code: 

def is_pangram(string)
  string = string.downcase
  ("a".."z").all? {|letter| string.include?(letter)}
end 

p is_pangram('The quick, brown fox jumps over the lazy dog!') == true
p is_pangram('The slow, brown fox jumps over the lazy dog!') == false
p is_pangram("A wizard’s job is to vex chumps quickly in fog.") == true
p is_pangram("A wizard’s task is to vex chumps quickly in fog.") == false
p is_pangram("A wizard’s job is to vex chumps quickly in golf.") == true

my_str = 'Sixty zippers were quickly picked from the woven jute bag.'
p is_pangram(my_str) == true
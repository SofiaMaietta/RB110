# Problem 13
# 3 minutes to solve 

# Create a method that takes two strings as arguments and returns true if some portion of the characters in the first string can be rearranged to match the characters in the second. Otherwise, the method should return false. You may assume that both string arguments only contain lowercase alphabetic characters. Neither string will be empty.

# Algorithm: 

# - Iterate over every character in str2 
# - if the count of ALL chars in str2 is less than or equal to the count of all chas in str1, return 
#   true, else, return false 

# Code: 

def unscramble(str1, str2)
  str2.chars.all? do |char|
    str2.count(char) <= str1.count(char)
  end 
end 

p unscramble('ansucchlohlo', 'launchschool') == true
p unscramble('phyarunstole', 'pythonrules') == true
p unscramble('phyarunstola', 'pythonrules') == false
p unscramble('boldface', 'coal') == true
# March 22, 2025

# Write a method that takes a string and returns a hash where the keys are the characters in the string and the values are the number of occurrences of each character.

### Algorithm ### 

# - Given a method `character_count` which takes one string as an argument:
# - Create an empty hash
# - Iterate over the input string 
# - For each character in the string, create the key value pairs where the key is the character and the value is the number of times that character appears in the string 
# - Return the hash 

### Code ### 

def character_count(string)
  string.each_char.with_object({}) { |char, hash| hash[char] = string.count(char) }
end 

p character_count("hello world") == {"h"=>1, "e"=>1, "l"=>3, "o"=>2, " "=>1, "w"=>1, "r"=>1, "d"=>1}

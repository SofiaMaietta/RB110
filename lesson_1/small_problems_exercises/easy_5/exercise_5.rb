# March 4, 2025     Clean Up the Words

# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

### Problem ### 

# Input: string
# Output: new string

# Explicit Req:
# - the words of the input string will all be lowercase 
# - replace all the non-alphabetic characters in the string with spaces 
# - the result should not contain any consecutive spaces

# Implicit Req:
# - Return a new string so as not to mutate the input string


### Examples / Test Cases ###

# p cleanup("---what's my +*& line?") == ' what s my line '


### Data Structure ### 

# string


### Algorithm ### 

# - Given a method `cleanup` which takes one string as an argument:
# - Iterate over the input string 
# - Create a new string
# - For every character that is alphabetic, push that into the new string
# - For every character that is non-alphabetic, push a space into the new string IF the last character in the new string is not already a space (ensures that we won't have consecutive spaces)
# - Return the new string


### Code ###

ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def cleanup(str)
  new_str = ""
  str.each_char do |char|
    if ALPHABET.include?(char)
      new_str << char 
    else 
      new_str << " " if new_str[-1] != " "
    end 
  end 
  new_str
end 

p cleanup("---what's my +*& line?") == ' what s my line '


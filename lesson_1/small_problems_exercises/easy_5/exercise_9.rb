# March 5, 2025       ddaaiillyy ddoouubbllee

# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!


### Problem ### 

# Input: string

# Output: new string

# Explicit Req:
# - the new returned string must contain the value of the original string 
# - all consecutive duplicate characters must be collapsed
# - do not use the above named built in Ruby methods

# Implicit Req: 
# - if there are no duplicate characters, return the input string
# - if the string is empty, return the input string


### Examples/Test Cases ###

# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''


### Data Structure ###

# String 


### Algorithm ###

# - Given a method `crunch` which takes one string as an argument 
# - Create an empty string called `new_string`
# - Iterate over the input string 
# - For each character in the input string:
# - Push that character into `new_string` if that character is not the same as the last character of `new_string`
# - Return `new_string`


### Code ###

def crunch(string)
  string.each_char.with_object("") do |char, new_string|
    new_string << char if char != new_string[-1] 
  end  
end 

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

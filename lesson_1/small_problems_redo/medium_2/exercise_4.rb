# May 26, 2025      Matching Parentheses?

# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs. Note that balanced pairs must each start with a (, not a ).

# Algorithm: 

# - Initialize a counter variable 
# - Iterate over the input string 
# - For each character, if the character is a ( then add one to the counter 
# - If the character is a ) then subtract one from the counter 
# - Break if the counter ever goes below 0
# - After iterating through the whole string, if the counter is 0, return true, else, return false 

# Code: 

def balanced?(string)
  counter = 0
  string.each_char do |char|
    if char == "("
      counter += 1 
    elsif char == ")"
      counter -= 1 
    end 
    break if counter < 0
  end 
  counter == 0
end 

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false
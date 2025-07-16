# April 18, 2025        Matching Parentheses

# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Algorithm:

# - Keep a running tally as you iterate through the string character by character
# - Increment a counter when you see an opening parenthesis, decrement when you see a closing one.
# - If the counter ever goes below zero, return false immediately (this means a closing parenthesis appeared without a matching opening one).
# - After processing the entire string, the counter should be exactly zero for balanced parentheses.

def balanced?(string)
  counter = 0
  string.chars.each do |char|
    return false if counter < 0
    counter += 1 if char == "("
    counter -= 1 if char == ")"
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
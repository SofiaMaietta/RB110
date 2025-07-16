# April 13, 2025    Word to Digit

# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Algorithm

# Create a hash where the words correspond to the appropriate numbers 0-9
# Iterate over the hash
# For each key value pair, where word represents the keys and num represents the values:
# If that word is included in the input string, replace it with the corresponding value in the hash
# Return the mutated string 

DIGITS = { "zero"=>"0", "one"=>"1", "two"=>"2", 
"three"=>"3", "four"=>"4", "five"=>"5", "six"=>"6", 
"seven"=>"7", "eight"=>"8", "nine"=>"9" }

def word_to_digit(string)
  DIGITS.each do |word, num|
    string.gsub!(word, num) if string.include?(word) 
  end 
  string
end 

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
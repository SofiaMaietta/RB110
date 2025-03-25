# March 4, 2025     Letter Counter (Part 1)

# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.


### Problem ### 

# Input: string
# Output: hash

# Explicit Req:
# - a word is any string of characters that do not include a space (including non-alphabetic characters)
# - the input string should have at least one word 
# - return a hash that shows the number of words of different sizes in the input string
# - the keys of the hash should be the number of characters of each word in the string
# - the values of the hash should be the number of times a word with that number of characters appears

# Implicit Req:
# - if the input is an empty string, return an empty hash


### Examples/Test Cases ###

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}


### Data Structure ###

# String / Hash 


### Algorithm ###

# - Given a method called `word_sizes` which takes one string as an argument:
# - Return an empty hash if the string is empty
# - Split the string into an array of words 
# - Iterate over the array using `each_with_object({})`
# - For each word in the array, set the key-value pairs of the hash 
# - Initialize local variable `word_length` which references the number of characters in each word (word.length)
# - The keys should be equal to `word_length`
# - The values should be the number of times a word appears with this many characters
# - Return this hash


### Code ###

def word_sizes(string)
  return {} if string.empty?
  array = string.split
  array.each_with_object({}) do |word, hash|
    word_length = word.length 
    hash[word_length] = array.count { |word| word.length == word_length }
  end 
end 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
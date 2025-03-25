# March 5, 2025       Letter Counter (Part 2)

# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.


### Problem ### 

# Input:

# Output: 

# Explicit Req:

# Implicit Req: 


### Examples/Test Cases ###

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}


### Data Structure ###


### Algorithm ###

# - Given a method called `word_sizes` which takes one string as an argument:
# - Return an empty hash if the string is empty
# - Split the string into an array of words 
# - Iterate over the array using `each_with_object({})`
# - For each word in the array, set the key-value pairs of the hash 
# - Initialize local variable `word_length` which references the number of characters in each word. 
# - If the character is not alphabetical, do not count that character in `word_length`
# - The keys should be equal to `word_length`
# - The values should be the number of times a word appears with this many characters
# - Return this hash


### Code ###

def word_sizes(string)
  return {} if string.empty?
  array = string.split
  array.each_with_object({}) do |word, hash|
    word_length = word.count("a-zA-Z")
    hash[word_length] = array.count { |word| word.count("a-zA-Z") == word_length }
  end 
end 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
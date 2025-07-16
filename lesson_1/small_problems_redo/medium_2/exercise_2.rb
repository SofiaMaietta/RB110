# May 18, 2025      Now I Know My ABCs

# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# Algorithm: 

# - Create a nested array called `blocks` that contains all pairs of letters representing a block 
# - Iterate over each block 
# - For the first letter in each block, count how many times the current letter of the string appears 
# - For the second letter in each block, count how many times the current letter of the string appears 
# - Add these counts together 
# - If the total is less than or equal to 1 for all of the blocks, return true 
# - Else, return false

BLOCKS = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"], ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"], ["V", "I"], ["L", "Y"], ["Z", "M"]] 

def block_word?(string)
  string = string.upcase
  BLOCKS.all? do |block|
    string.count(block[0]) + string.count(block[1]) <= 1 
  end 
end 
  
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('apples') == false
p block_word?('Baby') == false
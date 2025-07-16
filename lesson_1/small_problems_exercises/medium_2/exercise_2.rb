# April 18, 2025      Now I Know My ABCs

# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each letter in each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# Algorithm:

# - Initialize a nested array, where each subarray represents a different block 
# - Reassign the method parameter, string, to reference the upcased version of string
# - Iterate over the blocks array 
# - Iterate over each letter in each subarray 
# - For each letter, using `map`, transform each letter into an integer representing the number of times that letter occurs in the input string
# - The return value is our nested array which has been transformed into a nested array of integers
# - For each subarray, calculate the total of all integers in the subarray
# - If all of the totals are less than or equal to 1, return true - else, return false

BLOCKS = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"], ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"], ["V", "I"], ["L", "Y"], ["Z", "M"]]

def block_word?(string)
  string = string.upcase
  result = BLOCKS.map do |block|
    block.map {|letter| string.count(letter)}
  end 
  result.all? {|block| block[0] + block[1] <= 1}
end 

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('apples') == false
p block_word?('Baby') == false
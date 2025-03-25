# March 23, 2025      Group Anagrams

# Given this array:

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide','flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

# ["demo", "dome", "mode"]
# ["neon", "none"]
#(etc)

### Algorithm ###

# - Iterate over the input array using map
# - For each element in the input array, select those elements that are anagrams for the current element 
# - Filter out non-unique arrays 

# - How to determine if a word is an anagram
# - Given two strings:
# - Convert them into arrays
# - Sort them 
# - If the two arrays are equal, then the two strings are anagrams

### Code ###

def group_anagrams(array)
  result = array.map do |word|
    array.select do |item|
      item.chars.sort == word.chars.sort
    end.sort
  end.uniq

  result.each do |group|
    p group
  end
end 

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide','flow', 'neon']

group_anagrams(words)
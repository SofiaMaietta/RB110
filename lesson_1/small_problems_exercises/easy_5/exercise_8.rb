# March 5, 2025      Alphabetical Numbers

# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen


### Problem ### 

# Input: an array

# Output: a new array

# Explicit Req:
# - the output must be the input array sorted based on the English spelling for each number

# Implicit Req: 
# - the sorting will be based on alphabetical order 
# - must return a new array so as not to mutate the input array


### Examples/Test Cases ###

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]


### Data Structure ###

# Hash


### Algorithm ###

# - Given a method `alphabetic_number_sort` which takes one array as an argument: 
# - Convert the input array to a hash 
# - Iterate over this hash 
# - For each key value pair, sort the hash by its values, alphabetically
# - Then, extract all of the keys into an array
# - Return the array 


### Code ###

def alphabetic_number_sort(numbers)

  words = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"] 

  hash = (numbers.zip(words)).to_h
  sorted = hash.sort_by { |key, value| value }
  sorted.to_h.keys
end 

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
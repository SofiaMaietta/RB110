# April 21, 2025      Find All Indices

# Write a method that takes an array of strings and returns a hash where the keys are the strings and the values are arrays containing the indices where those strings appear in the original array.

# Problem

# Input: an array of strings
# Output: a hash 

# Explicit Reqs:

# - the keys of the hash should be each string in the input array 
# - the values of the hash should be arrays containing the indices where those strings appear in the original array 

# Examples: 

# find_all_indices(["a", "b", "c", "a", "d", "b"]) 
# # => { "a" => [0, 3], "b" => [1, 5], "c" => [2], "d" => [4] }

# find_all_indices(["apple"]) 
# # => { "apple" => [0] }

# find_all_indices([]) 
# # => {}

# Data Structure:

# - Array to hash 

# Algorithm:

# - Iterate over the input array while also building a hash
# - Create the keys of our hash using each letter of our input array 
# - To create the values of our new hash:
    # - Create a range representing the indices of each letter in the input array 
    # - Iterate over that range and select only the indices where the current letter appears
# - Return the hash 

# MY SOLUTION

def find_all_indices(array)
  array.each_with_object({}) do |letter, hash|
    hash[letter] = (0..array.length - 1).select do |index| 
      array[index] == letter
    end 
  end
end 

# LSBot SOLUTION:

def find_all_indices(array)
  result = {}
  array.each_with_index do |element, index|
    if result.has_key?(element)
      result[element] << index
    else
      result[element] = [index]
    end
  end
  result
end

p find_all_indices(["a", "b", "c", "a", "d", "b"]) == { "a" => [0, 3], "b" => [1, 5], "c" => [2], "d" => [4] }
p find_all_indices(["apple"]) == { "apple" => [0] }
p find_all_indices([]) == {}
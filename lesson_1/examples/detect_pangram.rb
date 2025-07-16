# April 25, 2025    PEDAC SESSION PROBLEM: Detect Panagram

# (This is a little easier than what you will see on the RB119 Interview)

# A pangram is a sentence that contains every single letter of the alphabet at least once.  
# For example: the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. 
# Return True if it is, False if not. Ignore numbers and punctuation.


# Problem:

# input: string 
# output: boolean value

# explicit req:

# - detect whether the input string contains every letter in the alphabet at least once 
# - ignore case, and anything that is not a letter


# Examples / Test Cases

# p (isPangram('The quick brown fox jumps over the lazy dog.') == true)
# p (isPangram('This is not a pangram.') == false)


# Data Structure 

# convert the string to an array which we iterate over 


# Algorithm

# - Initialize a hash by iterating over a range of the alphabet, where the keys are the letters of the alphabet and the values are initially 0
# - Convert the input string to an array 
# - iterate over input string, adding one to each value for every time the current character occurs in the input string
# - If any of the values of the hash are less than one, return false
# - Else, return true 

# MY SOLUTION:

def isPangram(string)

  string = string.downcase
  alphabet_hash = {}

  ("a".."z").each {|letter| alphabet_hash[letter] = 0}

  string.chars.each do |char|
    alphabet_hash[char] += 1 if ("a".."z").include?(char)
  end 

  alphabet_hash.all? {|k, v| v >= 1}
end 

p isPangram('The quick brown fox jumps over the lazy dog.') == true
p isPangram('This is not a pangram.') == false



# CRYSTAL'S SOLUTION:

# Data structures
# range ('a'..'z')
# standardized_string = string.downcase

# high level
# iterate through a range that represents the alphabet and check if all of the alphabet characters are being used in the input string

# algorithm
# - Given a method isPangram that takes a string as input
# - Define a range that represents the alphabet (a..z) 
# - Check if all characters of that range in included in the input string (all? --> true or false)

# def isPangram(str)
#   clean_string = str.downcase
#   ('a'..'z').all? { |char| clean_string.include?(char) }
# end
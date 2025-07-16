# Problem 8 
# 16 minutes to solve 

# Create a method that takes a non-empty string as an argument. The string consists entirely of lowercase alphabetic characters. The method should return the length of the longest vowel substring. The vowels of interest are "a", "e", "i", "o", and "u".

# Helper Method Algorithm: 

# - Initialize a result array 
# - Iterate over a range of indices starting at index 0 and going up to the end of the input string first
# - Iterate over a range of indices starting at first and going up to the length of the input string last
# - Slice the input string from first to last 
# - Push the sliced string into result array only if every char is a vowel 
# - Return result array 

# Main Method Algorithm: 

# - Return 0 if none of the chars in the input string are a vowel 
# - Push all substrings that are only vowels into a result array 
# - Iterate over the result array and find the longest substring
# - Return its length 

# Code: 

def vowel_substrings(string)
  result = []
  (0...string.length).each do |first|
    (first...string.length).each do |last|
      slice = string[first..last]
      result << slice if slice.chars.all? { |char| "aeiou".include?(char) }
    end 
  end 
  result
end 

def longest_vowel_substring(string)
  return 0 if string.chars.none? { |char| "aeiou".include?(char) }
  all_vowel_substrings = vowel_substrings(string)
  all_vowel_substrings.max_by { |substring| substring.length }.size
end

p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5
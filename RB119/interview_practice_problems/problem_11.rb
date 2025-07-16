# Problem 11
# 11 minutes to solve 

# Create a method that takes a nonempty string as an argument and returns an array consisting of a string and an integer. If we call the string argument s, the string component of the returned array t, and the integer component of the returned array k, then s, t, and k must be related to each other such that s == t * k. The values of t and k should be the shortest possible substring and the largest possible repeat count that satisfies this equation.

# You may assume that the string argument consists entirely of lowercase alphabetic letters.

# Algorithm: 

# - Iterate through all substrings 
# -Iterate through a range of numbers starting at length of input string and going down to 1 
# - For each substring and each number, check if that substring multiplied by that number will give us the input string 
# - If so, return the substring and the number in the form of an array 

# Code: 

def all_substrings(string)
  result = []
  (0...string.length).each do |first|
    (first...string.length).each do |last|
      result << string[first..last]
    end 
  end 
  result
end

def repeated_substring(string)
  substrings = all_substrings(string)
  (string.length).downto(1).each do |num|
    substrings.each do |substring|
      return [substring, num] if string == substring * num
    end 
  end 
end 

p repeated_substring('xyzxyzxyz') == ['xyz', 3]
p repeated_substring('xyxy') == ['xy', 2]
p repeated_substring('xyz') == ['xyz', 1]
p repeated_substring('aaaaaaaa') == ['a', 8]
p repeated_substring('superduper') == ['superduper', 1]
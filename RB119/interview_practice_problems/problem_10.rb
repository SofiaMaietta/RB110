# Problem 10
# 9 minutes to solve 

# Create a method that takes a string of digits as an argument and returns the number of even-numbered substrings that can be formed. For example, in the case of '1432', the even-numbered substrings are '14', '1432', '4', '432', '32', and '2', for a total of 6 substrings.

# If a substring occurs more than once, you should count each occurrence as a separate substring.

# Algorithm: 

# - To find substrings: 

# - Initialize a result array 
# - Iterate over a range of indices starting at 0 and going up to the length of the string `first`
# - Iterate over a range of indices starting at first and going up to the length of the string `last`
# - Slice the input string from first to last 
# - If the sliced string converted to an integer is even, push into result array 
# - Return result array 

# - Count the substrings in the result array and return the number 

# Code: 

def even_substrings(string)
  result = []
  (0...string.length).each do |first|
    (first...string.length).each do |last|
      slice = string[first..last]
      result << slice if slice.to_i.even?
    end 
  end 
  result.size 
end 

p even_substrings('1432') == 6
p even_substrings('3145926') == 16
p even_substrings('2718281') == 16
p even_substrings('13579') == 0
p even_substrings('143232') == 12
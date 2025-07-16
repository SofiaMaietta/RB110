# Problem 15
# 13 minutes to solve

# Create a method that takes a string argument that consists entirely of numeric digits and computes the greatest product of four consecutive digits in the string. The argument will always have more than 4 digits.

# Helper Method Algorithm: 

# - Initialize a result array
# - Iterate over a range of indices starting at 0 and going up to the length of the string `first`
# - Iterate over a range of indices starting at first and going up to the length of the string `last`
# - Slice input string from first to last 
# - If the sliced string has a size of 4, push into result array 
# - Return result array 

# Main Method Algorithm: 

# - Iterate over substrings array using map
# - Transform each substring into the product of its digits 
  # - Convert the substring to an integer, break the integer up into an array of its digits, and multiply together all the digits in the array
# - Return the largest product

# Code: 

def substrings_size_four(string)
  result = []
  (0...string.length).each do |first|
    (first...string.length).each do |last|
      slice = string[first..last]
      result << slice if slice.size == 4
    end 
  end 
  result
end 

def greatest_product(string)
  substrings = substrings_size_four(string)
  substrings.map { |substring| substring.to_i.digits.inject(:*) }.max 
end 

p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 6
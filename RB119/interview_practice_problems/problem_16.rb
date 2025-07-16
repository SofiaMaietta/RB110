# Problem 16
# 8 minutes to solve 

# Create a method that returns the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. You may assume that the input string contains only alphanumeric characters.

# Algorithm: 

# - downcase the input string 
# - initialize result array 
# - iterate over each char of input string 
# - if that char occurs more than once, push into result array 
# - filter out duplicates from result array 
# - return size of result array 

# Code: 

def distinct_multiples(string)
  string = string.downcase 
  result = []
  string.each_char do |char|
    result << char if string.count(char) > 1 
  end 
  result.uniq.size 
end 

p distinct_multiples('xyz') == 0               # (none)
p distinct_multiples('xxyypzzr') == 3          # x, y, z
p distinct_multiples('xXyYpzZr') == 3          # x, y, z
p distinct_multiples('unununium') == 2         # u, n
p distinct_multiples('multiplicity') == 3      # l, t, i
p distinct_multiples('7657') == 1              # 7
p distinct_multiples('3141592653589793') == 4  # 3, 1, 5, 9
p distinct_multiples('2718281828459045') == 5  # 2, 1, 8, 4, 5
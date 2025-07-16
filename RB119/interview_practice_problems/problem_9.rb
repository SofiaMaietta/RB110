# Problem 9 
# 27 minutes to solve 

# Create a method that takes two string arguments and returns the number of times that the second string occurs in the first string. Note that overlapping strings don't count: 'babab' contains 1 instance of 'bab', not 2. You may assume that the second argument is never an empty string.

# Algorithm: 

# - Return 0 if str2 is not included in str1
# - Get the length of str1 and save to local variable
# - Using `gsub!`, replace the substring (str2) that occurs in str1 with an empty string 
# - Subtract the original length of str1 minus the current length of str1 
# - Take that value and divide by the length of str2 
# - Return that value 

# Code: 

def count_substrings(str1, str2)
  return 0 unless str1.include?(str2)
  original_length_str1 = str1.length 
  new_length_str1 = str1.gsub(str2, "").length

  difference = original_length_str1 - new_length_str1

  difference / str2.length 
end 

p count_substrings('babab', 'bab') == 1
p count_substrings('babab', 'ba') == 2
p count_substrings('babab', 'b') == 3
p count_substrings('babab', 'x') == 0
p count_substrings('babab', 'x') == 0
p count_substrings('', 'x') == 0
p count_substrings('bbbaabbbbaab', 'baab') == 2
p count_substrings('bbbaabbbbaab', 'bbaab') == 2
p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1
# April 25, 2025      Bouncy Count

# Some numbers have only ascending digits, like 123, 3445, 2489, etc.
# Some numbers have only descending digits, like 321, 5443, 9842, etc.
# A number is "bouncy" if it has both ascending and descending digits, like 313, 92543, etc.
# Write a method that takes a list of numbers and counts how many of them are bouncy. Assume input arrays contain only positive numbers.


# Algorithm:

# - Given a method called bouncyCount which takes an array of integers as an argument:
# - Iterate over the input array 
# - For each integer in the array:
# - Separate each integer into an array of digits 
# - If that array of digits is equal to the array of digits sorted, OR if the array of digits reversed is equal to the array of digits sorted, return true, meaning they are consecutive, and not bouncy 
# - Otherwise, return false, meaning they are bouncy
# - Count how many return false and return this value

# Code

def num_to_array(num)
  num.digits.reverse 
end 

def bouncy_count(array)
  result = array.map do |integer|
    num_to_array(integer).reverse ==  num_to_array(integer).sort ||
    num_to_array(integer) ==  num_to_array(integer).sort
  end
  result.count(false)
end 

p bouncy_count([]) == 0
p bouncy_count([11, 0, 345, 21]) == 0
p bouncy_count([121, 4114]) == 2
p bouncy_count([176, 442, 80701644]) == 2
p bouncy_count([123, 321, 111, 222, 313, 535, 9876, 1234, 4321, 2468, 8642, 1357, 7531, 1324]) == 3
p bouncy_count([12345, 54321, 12321, 56789, 98765, 13579, 97531, 15263]) == 2
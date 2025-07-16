# Problem 14
# 25 minutes to solve 

# Create a method that takes a single integer argument and returns the sum of all the multiples of 7 or 11 that are less than the argument. If a number is a multiple of both 7 and 11, count it just once.  If the argument is negative, return 0.

# For example, the multiples of 7 and 11 that are below 25 are 7, 11, 14, 21, and 22. The sum of these multiples is 75.

# Algorithm: 

# - Return 0 if the input integer is less than or equal to 7
# - Initialize a total variable set to 0
# - Iterate over a range of numbers starting at 7 and going up to one less than the input integer 
# - For each number, if that number is a multiple of 7 OR 11, add it to total
# - Return total

# Code: 

def seven_eleven(input_int)
  return 0 if input_int <= 7
  total = 0
  (7...input_int).each do |num|
    total += num if num % 7 == 0 || num % 11 == 0 
  end 
  total
end 

p seven_eleven(10) == 7
p seven_eleven(11) == 7
p seven_eleven(12) == 18
p seven_eleven(25) == 75
p seven_eleven(100) == 1153
p seven_eleven(0) == 0
p seven_eleven(7) == 0
p seven_eleven(8) == 7
p seven_eleven(-100) == 0
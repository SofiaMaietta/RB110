# March 2, 2025     Leap Years (Part 1)

# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.


### Problem ###

# Input: a positive integer
# Output: a boolean value

# Explicit Requirements: 
# - the input integer must be positive 
# - the output must be the boolean true if the input integer is a leap year, and false otherwise
# - a leap year occurs when the integer is divisible by 4, unless the integer is divisible by 100
# - if the integer is divisible by 100, it must also be divisible by 400 for it to be a leap year

# Implicit Requirements: 

### Examples/Test Cases ###

# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true


### Data Structure ###

# Integer 


### Algorithm ###

# - Given a method `leap_year?` which takes one positive integer as an argument:
# - If the integer is divisible by 4 and not divisible by 100, return true
# - Elsif the integer is divisible by 400, return true
# - Else, return false 


### Code ###

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true 
  elsif year % 400 == 0
    true 
  else 
    false
  end
end 

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
# March 2, 2025     Leap Years (Part 2)

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

### Problem ###

# Input: a positive integer
# Output: a boolean value


# Explicit Reqs:

# - Starting at and after 1752:
# - the input integer must be positive 
# - the output must be the boolean true if the input integer is a leap year, and false otherwise
# - a leap year occurs when the integer is divisible by 4, unless the integer is divisible by 100
# - if the integer is divisible by 100, it must also be divisible by 400 for it to be a leap year

# - Before 1752: 
# - a leap year occurs when the integer is divisible by 4


### Examples/Test Cases ###

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true


### Data Structure ###

# Integer 


### Algorithm ###

# - Given a method `leap_year?` which takes one positive integer as an argument:
# - If the integer is less than 1752, and the integer is divisible by 4, return true
# - Elsif the integer is divisible by 4 and not divisible by 100, return true
# - Elsif the integer is divisible by 400, return true
# - Else, return false 


### Code ###

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true 
  elsif year % 4 == 0 && year % 100 != 0
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
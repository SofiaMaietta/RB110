# March 12, 2025      After Midnight (Part 2)

# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use Ruby's Date and Time methods.


### Problem ### 

# Input: string

# Output: integer


### Examples / Test Cases ###

# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0


### Algorithms ###

# Given a method called `after_midnight` which takes one string as an argument:

# - Convert the input string into two integers, `hours`, and `minutes`
# - Take the hours and multiply by 60 (`result`)
# - If the number of hours is less than 24, take the minutes and add them to `result` and return the sum
# - Else, return 0

# Given a method called `before_midnight` which takes one string as an argument:

# - Convert the input string into two integers, `hours`, and `minutes`
# - Take the hours and multiply by 60 (`result`)
# - If the number of hours is less than 24, take the minutes and subtract them from `result` and return the difference
# - Else, return 0


### Code ###

def after_midnight(string)
  hours = string.slice(0..1).to_i
  minutes = string.slice(3..4).to_i
  result = hours * 60 
  hours < 24 ? result + minutes : 0 
end

def before_midnight(string)
  hours = string.slice(0..1).to_i
  minutes = string.slice(3..4).to_i
  result = hours * 60 
  hours < 24 ? result - minutes : 0 
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
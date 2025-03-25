# March 12, 2025     After Midnight (Part 1)

# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use Ruby's Date and Time classes.



### Problem ### 

# Input: integer
# Output: string

# Explicit Req:
# - transform the time from a minute-based format (integer) into a string representing 24 hour format
# - if the integer is positive, the time is after midnight (00 - 12)
# - if the integer is negative, the time is before midnight (12 - 24)
# - the method should work with any integer input
# - There are 1440 minutes in one day 



### Examples/Test Cases ###

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"



### Data Stucture ### 

# Integer / String 

# 120 => "2:00"


### Algorithm ### 

# - Given a method called `time_of_day` which takes one integer as an argument: 
# - Take the total number of input minutes (`total_minutes`) and use the modulo operator with 1440 as the argument
# - This will tell us what the leftover minutes will be after 1440 goes into the input integer evenly as many times as it can
# - With this vaue (`leftover_minutes`), we will divide that by 60 using `divmod`
# - This will give us the integer result of the division (`hours`) and the remainder (`minutes`)
# - Finally, format the result using Kernel#format and return the result


### Code ###

def time_of_day(total_minutes)
  leftover_minutes = total_minutes % 1440
  hours, minutes = leftover_minutes.divmod(60)
  format("%02d:%02d", hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-35) == "23:25"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"





###  ORIGINAL ATTEMPT ###


### Algorithm ### 

# - Given a method `time_of_day` which takes one integer as an argument:

# - If the input is between 0 and 1439 inclusive (one full day):

# - Take the integer, and find 2 things:
  # - 1. The integer result of dividing that integer by 60
  # - 2. The remainder in the form of an integer 
# - Assign the first value as `hours` and the second value as `minutes`
# - Format the hour and minutes accordingly
# - Return the result 

# If the input is greater than or equal to 1440:

# - Take the integer and find the remainder (Integer % 1440)
# - Anything that doesn't go into 1440 evenly (the remainder) will serve as the minutes


### Code ###

# def time_of_day(int)
#   if int >= 0 && int < 1440
#     hours, minutes = int.divmod(60) 
#     format("%02d:%02d", hours, minutes)
#   elsif int < 0
#     hours, minutes = int.divmod(60)
#     format("%02d:%02d", 24 - hours, minutes)
#   else int >= 1440
#     time_of_day(int % 1440)
#   end
# end 
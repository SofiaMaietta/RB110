# March 7, 2025       Cute Angles

# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

# Note: You can use the following constant to represent the degree symbol: DEGREE = "\u00B0"


### Problem ### 

# Input: a floating point number

# Output: a string 


### Examples/Test Cases ###

# puts dms(30) == %(30°00'00")
# puts dms(76.73) == %(76°43'48")
# puts dms(254.6) == %(254°36'00")
# puts dms(93.034773) == %(93°02'05")
# puts dms(0) == %(0°00'00")
# puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


### Data Structure ###

# Float / Integer / String


### Algorithm ###

# - Initialize an empty string called `result_string`
# - The whole number part of the float is the degree. Leave that as is. 
# - Multiply the decimal portion of the float by 60 to get the minutes 
# - With the result, take the decimal portion and multiply it by 60 to get the seconds 
# - Formatting:
# - Convert `degree` to a string and push it into `result_string`
# - Push the degree sign into the string 
# - Convert `minutes` to a string and push it into `result_string`
# - Push the minutes sign into the string 
# - Convert `seconds` to a string and push it into `result_string`
# - Push the seconfs sign into the string 
# - Return `result_string`


### Code ###

DEGREE = "\u00B0"

def dms(float)
  degree = float.to_i
  minutes = (float - degree) * 60
  seconds = (minutes - minutes.to_i) * 60
  
  minutes = minutes.to_i
  seconds = seconds.to_i
  
  format(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
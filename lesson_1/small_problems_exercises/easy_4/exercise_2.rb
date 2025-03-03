# March 1, 2025         What Century is That?

# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

### Problem ###

# Input: an integer representing a year
# Output: a string representing the century

# Explicit Requirements: 

# - the return value should be a string 
# - the string should begin with an integer
# - the string should end with either st, nd, rd, or th
# - if the input ends in '00', this should be the same century as the one prior
# - if the input ends in '01', this should be a new century

# Implicit Requirements: 

# - There should be no negative integers input as there are no 'negative' years


### Examples/Test Cases ###

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'


### Data Structure ### 

# String / Integer


### Notes ###

# - If the input is between 1 and 100, it's the 1st century 
# - If the input is between 101 and 200, it's the 2nd century 
# - If the input is between 201 and 300, it's the 3rd century 


### Main Algorithm ###

# - Given a method called `century` which takes one integer as an input:

# - If the integer is less than 101, return `1st`

# - Else, convert the integer to a string

# - If the input ends in 00, remove the last two integers
# - The remaining integer(s) are the century (300, 3rd century)
# - Add the ending onto the century and return it

# - If the input ends in anything besides 00, remove the last two integers 
# - Convert the string back to an integer
# - To the remaining integers, add one, and that is the century (2145, 22nd century)
# - Convert the integer back into a string
# - Add the ending onto the century and return it

# - Helper Method `add_ending` Algorithm:

# - If the century number ends in 11, 12, or 13, append "th" to the end
# - If the century number ends in 1, append "st" to the end
# - If the century number ends in 2, append "nd" to the end
# - If the century number ends in 3, append "rd" to the end
# - Else, append `th` to the end


### Code ###

def century(year)
  if year < 101
    "1st" 
  else
    string = year.to_s 
    if string.end_with?("00")
      string.slice!(-2..-1)
      add_ending(string)
    else 
      string.slice!(-2..-1)
      int = string.to_i + 1
      add_ending(int.to_s)
    end 
  end 
end

def add_ending(century)
  if century.end_with?("11") || century.end_with?("12") || century.end_with?("13")
    century << "th"
  elsif century.end_with?("1")
    century << "st"
  elsif century.end_with?("2")
    century << "nd"
  elsif century.end_with?("3")
    century << "rd"
  else 
    century << "th"
  end 
end 

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

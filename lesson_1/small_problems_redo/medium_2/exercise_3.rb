# May 18, 2025      Lettercase Percentage Ratio

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Algorithm: 

# - Given a method called `letter_percentages` which takes one string as an argument: 
# - Initialize a result hash and set all the keys to lowercase, uppercase, neither and set all the values to 0
# - Split up the input string into an array of characters 
# - Iterate over the array of characters 
# - For each char, if the char is lowercase, uppercase, or neither, add one to the appropriate value 
# - With the result hash, iterate over each key value pair
# - For each value, find the percentage:
# - Divide the value by the size of the string (float) and multiply by 100 
# - Reassign the each value in the result hash to this new percentage 
# - Return the result hash 

# Code: 

def letter_percentages(string)
  result = {lowercase: 0, uppercase: 0, neither: 0}
  string.each_char do |char|
    if ("a".."z").include?(char)
      result[:lowercase] += 1 
    elsif ("A".."Z").include?(char) 
      result[:uppercase] += 1 
    else 
      result[:neither] += 1 
    end 
  end 
  result.each do |category, count|
    result[category] = (count / string.size.to_f) * 100 
  end 
  result 
end 

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
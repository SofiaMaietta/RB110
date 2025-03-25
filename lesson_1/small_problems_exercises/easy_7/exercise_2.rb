# March 8, 2025     Lettercase Counter

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one represents the number of characters that are uppercase letters, and one represents the number of characters that are neither.

### Algorithm ###

# - Given a method `letter_case_count` which takes one string as an argument: 
# - Initialize an empty hash
# - Count the number of characters in the string that are lowercase letters
# - Count the number of characters in the string that are uppercase letters
# - Count the number of characters in the string that are not letters
# - Create three key value pairs based on these three values 
# - Return the hash


### Code ###

def letter_case_count(string)
  hash = {}
  hash[:lowercase] = string.count('a-z')
  hash[:uppercase] = string.count('A-Z')
  hash[:neither] = string.count('^A-Za-z')
  hash
end 

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
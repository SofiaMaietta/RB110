# March 9, 2025     Staggered Caps (Part 1)

# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

### Algorithm ###

# - Given a method `staggered_case` which takes a string as an argument:
# - Initialize a new string
# - Iterate over the input string using `each_with_index`
# - If the index is odd and the character is a letter, make it lowercase and push it into the new string
# - Elsif the index is even and the character is a letter, make it uppercase and push it into the new string 
# - Else, push the character into the new string 
# - Return the new string

### Code ### 

def staggered_case(string)
  new_string = ""
  string.chars.each_with_index do |char, index|
    if index.odd? && ('a'..'z').include?(char.downcase)
      new_string << char.downcase 
    elsif index.even? && ('a'..'z').include?(char.downcase)
      new_string << char.upcase 
    else 
      new_string << char 
    end 
  end 
  new_string
end 

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# March 8, 2025       Swap Case 

# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged. You may not use String#swapcase.

### Algorithm ### 

# - Iterate over the input string 
# - For each character in the input string:
# - If the current character is uppercase, push its lowercase version into the new string
# - If the current character is lowercase, push its uppercase version into the new string
# - Else, push that same character into the new string
# - Return the new string

### Code ### 

def swapcase(string)
  string.chars.each_with_object("") do |char, new_string|
    if ('a'..'z').include?(char)
      new_string << char.upcase 
    elsif ('A'..'Z').include?(char)
      new_string << char.downcase
    else 
      new_string << char
    end 
  end 
end

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
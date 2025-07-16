# Problem 3 

# SOLUTION 1
# 32 minutes to solve

# Create a method that takes a string argument and returns a copy of the string with every second character in every third word converted to uppercase. Other characters should remain the same.

# Algorithm: 

# - Initialize result string 
# - Split up input string into an array of words 
# - For each word, if the index of the word plus 1 is a multiple of 3: 
  # - Iterate over each char of that word
  # - if the index of the current char is odd, push the upcased char into new string 
  # - else, push the char into new string 
  # - Finally, push a space into the new string
# - Else, push the word itself into the new string 
# - Then, push a space into the new string
# - Return the new string

# Code: 

def to_weird_case(string)
  result = ""
  string.split.each_with_index do |word, word_idx|
    if (word_idx + 1) % 3 == 0
      word.chars.each_with_index do |char, char_idx|
        if char_idx.odd? 
          result << char.upcase 
        else 
          result << char 
        end 
      end
      result << " "
    else 
      result << word << " "
    end 
  end 
  result.chop
end 

original = 'Lorem Ipsum is simply dummy text of the printing world'
expected = 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world'
p to_weird_case(original) == expected

original = 'It is a long established fact that a reader will be distracted'
expected = 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case(original) == expected

p to_weird_case('aaA bB c') == 'aaA bB c'

original = "Mary Poppins' favorite word is supercalifragilisticexpialidocious"
expected = "Mary Poppins' fAvOrItE word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"
p to_weird_case(original) == expected




# SOLUTION 2
# 13 minutes to solve

# Create a method that takes a string argument and returns a copy of the string with every second character in every third word converted to uppercase. Other characters should remain the same.

# Helper Method Algorithm: 

# - takes a string as an argument 
# - breaks up the string into an array of chars 
# - iterate over the array of chars using map and with_index
# - for each char, if that char's index is odd, upcase that char 
# - join the array back into a string and return the string 

# Main Method Algorithm: 

# - Break up the input string into an array of words 
# - iterate over the array of words using map and with_index
# - For each word, if the index of that word plus 1 is divisible by 3: 
# - pass the word to the helper method 
# - join the array of words back into a string and return the string 

# Helper Method:

def upcase_every_other(string)
  string.chars.map.with_index do |char, index|
    index.odd? ? char.upcase : char 
  end.join 
end 

# Main Method: 

def to_weird_case(string)
  string.split.map.with_index do |word, index|
    (index + 1) % 3 == 0 ? upcase_every_other(word) : word 
  end.join(" ")
end 

original = 'Lorem Ipsum is simply dummy text of the printing world'
expected = 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world'
p to_weird_case(original) == expected

original = 'It is a long established fact that a reader will be distracted'
expected = 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case(original) == expected

p to_weird_case('aaA bB c') == 'aaA bB c'

original = "Mary Poppins' favorite word is supercalifragilisticexpialidocious"
expected = "Mary Poppins' fAvOrItE word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"
p to_weird_case(original) == expected
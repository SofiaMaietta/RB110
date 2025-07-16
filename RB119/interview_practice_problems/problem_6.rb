# Problem 6
# 7 minutes to solve 

# Create a method that takes a string argument and returns a hash in which the keys represent the lowercase letters in the string, and the values represent how often the corresponding letter occurs in the string.

# Algorithm: 

# - initialize result hash 
# - iterate over each char of the input string 
# - if that char is a letter AND the letter is lowercase: 
# - make that char a key in the result hash 
# - for the value, count how many times that char appears 
# - return the result hash 

# Code: 

def count_letters(string)
  result = {}
  string.each_char do |char|
    if ("a".."z").include?(char)
      result[char] = string.count(char)
    end 
  end 
  result 
end 

expected = {'w' => 1, 'o' => 2, 'e' => 3, 'b' => 1, 'g' => 1, 'n' => 1}
p count_letters('woebegone') == expected

expected = {'l' => 1, 'o' => 1, 'w' => 1, 'e' => 4, 'r' => 2,
            'c' => 2, 'a' => 2, 's' => 2, 'u' => 1, 'p' => 2}
p count_letters('lowercase/uppercase') == expected

expected = {'u' => 1, 'o' => 1, 'i' => 1, 's' => 1}
p count_letters('W. E. B. Du Bois') == expected

p count_letters('x') == {'x' => 1}
p count_letters('') == {}
p count_letters('!!!') == {}
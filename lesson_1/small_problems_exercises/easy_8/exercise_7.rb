# March 10, 2025      Double Char (Part 2)

# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

### Code ###

VOWELS = ["a", "e", "i", "o", "u"]

def double_consonants(string)
  string.chars.each_with_object("") do |char, new_string|
    if ("a".."z").include?(char.downcase) && !VOWELS.include?(char.downcase)
      new_string << char << char 
    else 
      new_string << char 
    end 
  end 
end 

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
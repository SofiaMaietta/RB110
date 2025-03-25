# March 10, 2025      Double Char (Part 1)

# Write a method that takes a string, and returns a new string in which every character is doubled.

### Code ###

def repeater(string)
  string.chars.each_with_object("") do |char, new_string|
    2.times {new_string << char}
  end 
end 


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
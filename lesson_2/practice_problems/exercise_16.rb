# March 30, 2025

# A UUID is a type of identifier often used as a way to uniquely identify items. Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

def generate_uuid 
  characters = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
  sections = [8, 4, 4, 4, 12]
  sections.each_with_object("") do |number, string|
    number.times { string << characters.sample }
    string << "-"
  end.chop
end 

p generate_uuid
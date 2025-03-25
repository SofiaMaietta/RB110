# March 6, 2025       List of Digits

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

### Algorithm ###

# - Convert the integer to a string 
# - Initialize an empty array
# - Iterate over the string
# - For each character in the string, convert that character to an integer and push it into the array
# - Return the array

### Code ###

def digit_list(num)
  array = []
  num.to_s.each_char do |char|
    array << char.to_i 
  end
  array
end 

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
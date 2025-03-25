# March 6, 2025     Delete Vowels

# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.


### Algorithm ###

# - Iterate over the input array using map which will return a new array
# - For each string in the input array, delete any vowels
# - Return the new array


### Code ###

def remove_vowels(array)
  array.map { |word| word.delete("aeiouAEIOU") }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
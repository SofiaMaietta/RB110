# May 17, 2025      Word to Digit 

# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Algorithm:

# - Initialize a hash where the keys are strings, the word versions of numbers and the values are the numbers as themselves as strings
# - Delete anything from the input string that is not a space or a letter
# - Split the input string up into an array of words
# - Iterate over the array of words
# - If the current word is a key in the hash, replace the word in the string with the associated hash value
# - Return the string 

NUMBERS = {"zero" => "0", "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9"}

def word_to_digit(string)
  words = string.delete('^A-Za-z ').split
  words.each do |word|
    if NUMBERS.key?(word)
      string.gsub!(word, NUMBERS[word])
    end
  end
  string
end 


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
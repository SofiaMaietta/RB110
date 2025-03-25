# March 4, 2025     Letter Swap 

# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces.


### Problem ###

# Input: string 
# Output: new string

# Explicit Req:

# - for every word in the input string, swap the first and last letters 
# - every word contains at least one letter
# - the input string contains at least one word
# - each string contains only words and spaces

# Implicit Req:

# - return a new string so as not to mutate the input string
# - case does not matter here



### Examples/Test Cases ###

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'


### Data Structure ###

# Array / String


### Algorithm ### 

# - Given a method `swap` which takes one string as an argument:
# - Split the input string into an array of strings (words)
# - Iterate over the array of strings using map
# - For each string in the array:
  # - Remove the first character in the string and append it to the end of the string 
  # - Remove the second to last character in the string and prepend it to the beginning of the string
# - Join the elements of the array together using `join(" ")`
# - Return the result



### Code ###

def swap(str)
  str.split.map do |word|
    if word.length == 1
      word
    elsif word.length == 2
      word << word.slice!(0)
     else 
      word << word.slice!(0)
      word.prepend(word.slice!(-2))
    end
  end.join(" ")
end 

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
p swap("IT") == "TI"
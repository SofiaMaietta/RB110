# March 25, 2025

# Write a method that creates a string that has each word capitalized as it would be in a title.

title = "the flintstones rock"

def titleize(words)
  words.split.map { |word| word.capitalize }.join(" ")
end 

p titleize(title)
# March 25, 2025

# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# Example { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

result = statement.chars.each_with_object({}) do |letter, hash|
  hash[letter] = statement.count(letter) if letter != " "
end 

p result
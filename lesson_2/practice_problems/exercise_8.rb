# March 30, 2025

# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, value|
  value.each do |word|
    word.chars.each do |letter|
      puts letter if "AEIOUaeiou".include?(letter)
    end 
  end 
end

# March 6, 2025       Spin Me Around in Circles

# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

str = 'hello world'

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me(str) # "olleh dlrow"

puts str.object_id # => 60
puts spin_me(str).object_id # => 80


# This method will return a different object than the one passed in as an argument. 

# When we convert the string into an array by calling split, we are creating a new object. Even just doing str.split.join(" ") returns a different object since you are splitting the string into an array and then joining that array back into a new string, with the same sequence of characters, but it's still a different object.
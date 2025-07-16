# April 15, 2025      Diamonds!

# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# diamond(5)

#     *
#    ***
#   *****
#    ***
#     *

# Algorithm:

# - Given a method `diamond` which takes one positive, odd integer as an argument:
# - Figure out the first line:
# - stars_counter = 1
# - spaces_counter = (input integer - 1) / 2 
# - For an input integer of 7, this would mean stars_counter starts at 1 and spaces_counter starts at 3
# - Create the first line by pushing in 3 spaces and 1 star
# - Decrement spaces_counter by 1 and increment stars_counter by 2 on every iteration 
# - Stop when stars_counter equals the input integer 

# SOLUTION 1

def diamond_top(int)
  stars_counter = 1
  spaces_counter = (int - 1) / 2
  loop do 
    line = ""
    spaces_counter.times {line << " "}
    stars_counter.times {line << "*"}
    puts line
    spaces_counter -= 1
    stars_counter += 2 
    break if stars_counter > int 
  end 
end 

def diamond_bottom(int)
  stars_counter = int - 2
  spaces_counter = 1
  loop do 
    line = ""
    spaces_counter.times {line << " "}
    stars_counter.times {line << "*"}
    puts line
    spaces_counter += 1
    stars_counter -= 2 
    break if stars_counter < 1 
  end 
end 

def diamond(int)
  diamond_top(int)
  diamond_bottom(int)
end 

diamond(1)
diamond(3)
diamond(5)
diamond(7)

# SOLUTION 2

# Algorithm:

# - Create an array containing only the odd numbers from one up to the input integer 
# - [1, 3, 5, 7]
# - With that array, multiply each number in the array by "*" and push this into an array called result

def diamond(int)
  odds = (1..int).each_with_object([]) do |num, array|
    array << num if num.odd?
  end 

  result = odds.each_with_object([]) do |number, array|
    array << "*" * number 
  end 

  centered = result.map do |row|
    row.center(int)
  end 

  puts centered
end 

diamond(5)
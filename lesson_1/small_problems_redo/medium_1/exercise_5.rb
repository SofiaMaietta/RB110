# May 18, 2025      Diamonds!

# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# Algorithm: 

# - Given a method called `diamond` which takes one integer as an argument: 
# - To create the top half of the diamond:
# - For each number from 1 up to the input integer minus 2:
# - If that number is odd, output that many stars, centered with the input integer
# - To create the center of the diamond:
# - Output the number of stars as indicated by input integer
# - To create the bottom half of the diamond:
# - For each number from 2 minus the input integer down to 1:
# - If that number is odd, output that many stars, centered with the input integer 

# Code: 

def diamond(num)
  1.upto(num - 2).each do |n|
    if n.odd?
      puts ("*" * n).center(num)
    end 
  end

  puts "*" * num 

  (num - 2).downto(1).each do |n|
    if n.odd?
      puts ("*" * n).center(num)
    end 
  end 
end 

diamond(3)
diamond(5)
diamond(7)
diamond(9)
# May 26, 2025      Sum Square - Square Sum 

# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# Algorithm: 

# - Find the first n positive integers 
# - Sum them 
# - Square the sum 

# - Find the first n positive integers 
# - Find the squares of each integer 
# - Sum the squares 

# - Subtract the second result from the first result 

# Code: 

def sum_square_difference(n)
  first = (1..n).sum ** 2 
  second = (1..n).map {|num| num ** 2}.sum 
  first - second 
end 

p sum_square_difference(3) == 22 # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
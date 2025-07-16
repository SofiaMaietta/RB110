# April 19, 2025    Sum Square - Square Sum

# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# Algorithm #

# - First, compute the sum of the first n positive integers
# - Then square the result 
# - Next, compute the squares of the first n positive integers 
# - Then find the sum 
# - Finally, subtract the second result from the first result

# SOLUTION 1

def sum_square_difference(num)
  result_1 = (1..num).to_a.sum ** 2
  result_2 = (1..num).map {|num| num ** 2}.sum
  result_1 - result_2
end 

# SOLUTION 2

def sum_square_difference(num)
  ((1..num).to_a.sum ** 2) - ((1..num).map {|num| num ** 2}.sum)
end 

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
# March 7, 2025     Fibonacci Number Location By Length

# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers.  

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.) You may assume that the argument is always greater than or equal to 2.



### Problem ### 

# Input: integer representing the number of digits

# Output: integer representing the index of the first number that has the number of digits specified by the input integer

# Explicit Req:
# - input will be greater than or equal to 2


### Examples/Test Cases ###

# p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847


### Data Structure ###

# Integer


### Algorithm ###

# - Given a method named `find_fibonacci_index_by_length` which takes one integer as an argument:
# - Initialize the first two Fibonacci numbers (1, 1)
# - Initialize the index counter
# - Generate next Fibonacci number
# - Check if it meets our criteria
# - If not, update our tracking variables and continue the loop


### Code ###

def find_fibonacci_index_by_length(input_int)
  fib_1 = 1
  fib_2 = 1
  counter = 3
  loop do 
    current_fib = fib_1 + fib_2 
    break if current_fib.to_s.length >= input_int    
    counter += 1
    fib_1, fib_2 = fib_2, current_fib
  end 
  counter
end 

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
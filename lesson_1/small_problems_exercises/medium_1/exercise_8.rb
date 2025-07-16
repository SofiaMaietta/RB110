# April 16, 2025      Fibonacci Numbers (Recursion)

# Recursive Methods:
# - Call themselves at least once.
# - Have a condition that stops the recursion (n == 1 above).
# - Use the result returned by themselves.

# Example:

# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end

# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

# First 12 Fibonnaci numbers: [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]

# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.


def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end 


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765 
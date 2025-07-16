# May 17, 2025      Fibonacci Numbers (Last Digit)

# Compute a method that returns the last digit of the nth Fibonacci number.

# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144

# The last digit of the nth Fibonacci number is equal to the last digit of n - 1 plus the last digit of n - 2

def fibonacci(n)
  fib_1 = 1
  fib_2 = 1
  fib_next = 0
  (n - 2).times do
    fib_next = fib_1 + fib_2 
    fib_1, fib_2 = fib_2, fib_next 
  end 
  fib_next 
end 

def fibonacci_last(n)
  (fibonacci(n - 1).digits.first + fibonacci(n - 2).digits.first).digits.first
end 

p fibonacci_last(15) == 0 # (the 15th Fibonacci number is 610)
p fibonacci_last(20) == 5 # (the 20th Fibonacci number is 6765)
p fibonacci_last(100) == 5 # (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001) == 1 # (this is a 20899 digit number)
p fibonacci_last(1_000_007) == 3 # (this is a 208989 digit number)
p fibonacci_last(123456789) == 4
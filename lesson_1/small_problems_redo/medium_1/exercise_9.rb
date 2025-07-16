# May 17, 2025      Fibonacci Numbers (Procedural)

# Rewrite your recursive fibonacci method so that it computes its results without recursion.

# 1, 1, 2, 3, 5, 8, 13, 21

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

p fibonacci(5) == 5
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
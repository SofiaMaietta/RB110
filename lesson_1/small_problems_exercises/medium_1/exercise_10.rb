# April 16, 2025      Fibonacci Numbers (Last Digit)

# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

def fibonacci(n)
  f_1 = 1
  f_2 = 1
  f_next = 0
  (n - 2).times do 
    f_next = f_1 + f_2
    f_1 = f_2 
    f_2 = f_next
  end 
  f_next
end 

def fibonacci_last(n)
  fibonacci(n).to_s.slice(-1).to_i
end 

p fibonacci_last(15) == 0
p fibonacci_last(20) == 5
p fibonacci_last(100) == 5
p fibonacci_last(100_001) == 1
p fibonacci_last(1_000_007) == 3
p fibonacci_last(123456789) == 4

# [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233]
# Problem 17 
# 13 minutes to solve 

# Create a method that takes an array of integers as an argument. The method should determine the minimum integer value that can be appended to the array so the sum of all the elements equal the closest prime number that is greater than the current sum of the numbers. For example, the numbers in [1, 2, 3] sum to 6. The nearest prime number greater than 6 is 7. Thus, we can add 1 to the array to sum to 7.

# The array will always contain at least 2 integers.
# All values in the array must be positive (> 0).
# There may be multiple occurrences of the various numbers in the array.

# Main Method Algorithm: 

# - Initialize a counter variable set to 0 
# - Begin a loop 
# - Increment counter by 1 
# - Check if counter added to the sum of the array gives us a prime number 
# - If it does, return counter 
# - Otherwise, keep looping 

# Helper Method Algorithm: 

# - To determine if a number is prime: 
# - Iterate over a range of numbers starting at 2 and going up to one less than the input integer 
# - For each number in the range, check if the input integer is evenly divisible by that number 
# - If the input int is divisible by none of the numbers in the range, return true (meaning it's prime)
# - Else, return false (it's not prime)

# Helper Method: 

def is_prime?(input_int)
  (2...input_int).none? do |num|
    input_int % num == 0 
  end 
end 

# Main Method:

def nearest_prime_sum(array)
  counter = 0
  loop do 
    counter += 1 
    return counter if is_prime?(array.sum + counter)
  end 
end 

p nearest_prime_sum([1, 2, 3]) == 1        # Nearest prime to 6 is 7
p nearest_prime_sum([5, 2]) == 4           # Nearest prime to 7 is 11
p nearest_prime_sum([1, 1, 1]) == 2        # Nearest prime to 3 is 5
p nearest_prime_sum([2, 12, 8, 4, 6]) == 5 # Nearest prime to 32 is 37
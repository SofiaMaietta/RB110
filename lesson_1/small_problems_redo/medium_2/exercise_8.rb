# May 19, 2025    Next Featured Number Higher than a Given Value

# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

# Algorithm: 

# - Given a method called `featured` which takes one integer as an argument: 
# - Create a loop
# - Increment the input integer by one 
# - Check whether the number is divisible by 7 AND is odd
# - Check whether the digits occur only once 
# - To do this, convert the number to an array of digits 
# - If the array is equal to the unique version of the array, all the digits occur only once 
# - If all these conditions evaluate to true, return the current number 
# - Else, keep looping 

def featured(num)
  loop do 
    num += 1 
    return num if num % 7 == 0 && num.odd? && num.digits == num.digits.uniq
    if num >= 9876543210
      return "There is no possible number that fulfills those requirements"
    end
  end 
end 

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) == "There is no possible number that fulfills those requirements"
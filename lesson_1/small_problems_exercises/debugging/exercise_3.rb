# April 19, 2025      Valid Series?

# The valid_series? method checks whether a series of numbers is valid. For the purposes of this exercise, a valid series of numbers must contain exactly three odd numbers. Additionally, the numbers in the series must sum to 47. Unfortunately, our last test case is not returning the expected result. Why is that?

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count = 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8]) == true
p valid_series?([1, 12, 2, 5, 16, 6]) == false
p valid_series?([28, 3, 4, 7, 9, 14]) == false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3]) == true
p valid_series?([10, 6, 19, 2, 6, 4]) == false

# ANSWER: 

# The issue with this code is that in our ternary expression, we are using the assignment operator (=) when instead we should be using the equality operator (==). What the assignment operator is doing here is assigning the integer 3 to local variable odd_count. The return value of any assignment is the value that was assigned to the local variable. Therefore, the return value of odd_count = 3 is 3. Since 3 is a truthy value (because anything besides false and nil in Ruby is considered truthy) then this expression will always evaluate as true, which is why our method is not working the way we want.

# To fix this, we simply need to replace the (=) with (==). The equality operator will then allow us to check the truthiness of whether odd_count is equal to 3. If it is, the ternary will return true. If not, the ternary will return false. 
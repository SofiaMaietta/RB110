# March 25, 2025

# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

p numbers

# Unexpected behavior will occur when you modify an array while iterating over it. 
# This should always be avoided.
# Output is 1, 3



# What would be output by this code?
# Output is 1, 2

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
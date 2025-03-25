# March 23, 2025      Double Doubles

# A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

# Note: underscores are used for clarity. Ruby lets you use underscores when writing long numbers; however, it does not print the underscores when printing long numbers. Don't be alarmed if you don't see the underscores when running your tests.



### Examples / Test Cases ###

# twice(37) == 74
# twice(44) == 44
# twice(334433) == 668866
# twice(444) == 888
# twice(107) == 214
# twice(103103) == 103103
# twice(3333) == 3333
# twice(7676) == 7676
# twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# twice(5) == 10



### Algorithm ###

# - Given a method `twice` which takes one integer as an argument 
# - If the number is not a double number, multiply it by 2 and return the result
# - Else, return the number as is

# - To find out if a number is a double number:
# - Convert the integer to a string
# - Slice the string from index 0 to the length of the string / 2, minus 1 
# - Slice the string from the length of the string / 2 to the length of the string minus 1
# - If the two return values are equal, it's a double number


### Code ###

def double_number?(int)
  number = int.to_s
  length = number.length
  number.slice(0..length / 2 - 1) == number.slice(length / 2..length - 1)
end 

def twice(int)
  return int * 2 if int < 10
  double_number?(int) ? int : int * 2
end 

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
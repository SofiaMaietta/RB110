# March 30, 2025

# Given this code, what would be the final values of a and b?

a = 2
b = [5, 8]
arr = [a, b] # arr = [2, [5, 8]]

arr[0] += 2 # arr[0] = arr[0] + 2 
# arr = [4, [5, 8]]
# a = 2

# The syntax `arr[0] =` is a mutating operation. 
# We are mutating `arr` by reassigning the element at the 0th index.
# We know that reassignment of one object will not have an affect on any other objects, which is why `a` remains unchanged, even though `arr` is mutated.

arr[1][0] -= a # arr[1][0] = arr[1][0] - a
# arr[1][0] = 5 - 2
# arr = [4, [3, 8]]
# b = [3, 8]

# The value of `b` does change because `b` is an array and we are modifying that array by assigning a new value at index 0 of that array.
# Remember that `a` references an integer, and integers are immutable, whereas arrays are mutable. 

p a # => 2
p b # => [3, 8]
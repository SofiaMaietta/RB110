# March 24, 2025

# What is the return value of the following statement? Why?

p ['ant', 'bear', 'caterpillar'].pop.size

# The return value is 11. 

# This is because `pop` destructively removes and returns the last element of the array, which is the string 'caterpillar'. Then we call the `size` method on this string which counts the characters in the string (11). 
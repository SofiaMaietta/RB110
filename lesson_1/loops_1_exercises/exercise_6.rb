# February 27, 2025     Print While

# Using a while loop, print 5 random numbers between 0 and 99 (inclusive). The code below shows an example of how to begin solving this exercise.

# numbers = []

# while <condition>
#   # ...
# end

numbers = []

while numbers.length < 5
  numbers << rand(1..99)
end

puts numbers


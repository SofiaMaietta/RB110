# March 23, 2025      Sequence Count

# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# SOLUTION 1

def sequence(counter, multiple)
  multiplier = 1
  array = []
  counter.times do |_|
    array << multiple * multiplier
    multiplier += 1
  end 
  array
end 

# SOLUTION 2

def sequence(counter, multiple)
  (1..counter).map { |num| multiple * num }
end 


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28] # [1, 2, 3, 4]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
# March 24, 2025

# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# The return value of map is [nil, 'bear']. 

# `map` always returns a new array with the same number of elements as the calling collection. This new array will consist of the values returned by the block for each corresponding element in the original collection. 

# The block returns `nil` for the first key value pair, so that is the first element in our new array. The block returns 'bear' for the second key value pair, so that is the second element in our new array. 

# (When none of the conditions in an if statement evaluates as true, the if statement itself returns nil.)
# March 24, 2025

# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# The return value of the `select` method is [1, 2, 3]. 

# This is because the return value of the select method is determined by the return value of the block for each element in the calling collection. Since 'hi' is the last line of code in the block, this is the return value of the block. Since anything besides `false` and `nil` in Ruby is truthy, we know that the return value of the block is truthy for every element in the calling collection, because 'hi' is always truthy. As a result, all three elements of the calling collection will be selected for the new array that `select` returns.
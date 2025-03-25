# March 24, 2025

# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# The return value of `reject` is [1, 2, 3]. 

# This is because `reject` will consider the truthiness of the block in determining the return value of the method. If the block returns a falsy value for the current element, that element will be added to the new array.

# Since the block returns nil for every element, and nil is falsy, then every element will be selected. 
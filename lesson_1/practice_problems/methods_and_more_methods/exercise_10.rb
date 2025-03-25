# March 24, 2025

# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# The return value is [1, nil, nil]. 

# We see `nil` as the second two elements of our new array that's returned because `puts` always returns nil, so `nil` is what the block returns for the second and third elements of our calling array. 
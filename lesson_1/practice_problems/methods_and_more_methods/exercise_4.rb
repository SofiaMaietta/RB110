# March 24, 2025

# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# The return value of `each_with_object` is {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}.

# This is because `each_with_object` iterates over the calling array while building and returning the hash that was passed in as an argument. 

# The key of each key value pair will be the first character of each element in the array, and the value will be that element itself. 
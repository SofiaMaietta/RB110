# March 24, 2025

# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# `count` considers the truthiness of the block's return value in order to determine the return value of the method itself.

# If the block returns a truthy value for the current element, that element will be added to the count. If the block returns a falsy value for the current element, that element will not be added to the count. 

# The count (in the form of an integer) will then be returned from this method. 

# We could test this by running it in irb or checking the Ruby docs if we didn't know.
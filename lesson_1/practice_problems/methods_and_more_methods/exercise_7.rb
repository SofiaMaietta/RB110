# March 24, 2025

# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The block's return value is true. It is determined by the return value of the last line of code in the block. 

# The return value of `any?` is true. 

# This code outputs: 1

# This method only has one iteration, because as soon as the block returns true for the first element, it can guarantee the return value for the entire method (because at least one element satisfies the condition). Therefore, execution of the method halts after the first iteration. 
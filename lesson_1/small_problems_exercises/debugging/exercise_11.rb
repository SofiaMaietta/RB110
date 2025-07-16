# April 19, 2025      What's Wrong with the Output?

# Josh wants to print an array of numeric strings in reverse numerical order. However, the output is wrong. Without removing any code, help Josh get the expected output.

arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

# SOLUTION 1

arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

# SOLUTION 2

p arr.sort { |x, y| y.to_i <=> x.to_i }

# ANSWER: 

# When we use a do...end block, p and arr.sort bind more tightly together than arr.sort and the block due to Ruby's precedence rules. In the original code, what we are actually doing is passing the block to the return value of p arr.sort. Thus, the block is ignored since the return value of p arr.sort is not a method call and therefore cannot accept any arguments. 
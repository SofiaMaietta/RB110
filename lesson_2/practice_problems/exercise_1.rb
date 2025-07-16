# March 30, 2025

# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

arr.sort_by do |string|
  string.to_i
end.reverse

# => ["11", "10", "9", "8", "7"]

# OR

arr.sort do |a, b|
  b.to_i <=> a.to_i
end

# => ["11", "10", "9", "8", "7"]
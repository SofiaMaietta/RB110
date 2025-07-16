# Problem 7
# 13 minutes to solve 

# Create a method that takes an array of integers as an argument and returns the number of identical pairs of integers in that array. For instance, the number of identical pairs in [1, 2, 3, 2, 1] is 2: there are two occurrences each of both 2 and 1.

# If the array is empty or contains exactly one value, return 0.

# If a certain number occurs more than twice, count each complete pair once. For instance, for [1, 1, 1, 1] and [2, 2, 2, 2, 2], the method should return 2. The first array contains two complete pairs while the second has an extra 2 that isn't part of the other two pairs.

# Algorithm: 

# - Return 0 if none of the numbers in the input array occur at least twice 
# - Initialize total variable set to 0
# - from the input array, select only the numbers that occur at least twice 
# - for each unique number in that array, count how many times that number appears in the array 
# - divide that number by 2 and it will give us the amount of idential and complete pairs 
# - Add the number of pairs to total 
# - Return total 

# Code: 

def pairs(array)
  return 0 if array.none? {|num| array.count(num) > 1}
  total = 0
  multiples = array.select {|num| array.count(num) > 1}
  multiples.uniq.count do |num| 
    total += array.count(num) / 2
  end 
  total
end 

p pairs([3, 1, 4, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7]) == 3
p pairs([2, 7, 1, 8, 2, 8, 1, 8, 2, 8, 4]) == 4
p pairs([]) == 0
p pairs([23]) == 0
p pairs([997, 997]) == 1
p pairs([32, 32, 32]) == 1
p pairs([7, 7, 7, 7, 7, 7, 7]) == 3



# SOLUTION 2
# 15 minutes to solve

# Helper Method Algorithm: 

# - initialize result hash
# - iterate over input array
# - for each number, if the count of that number is greater than 1: 
# - set the number as the key 
# - for the value, set it as the count for that number in the input array 

# Main Method Algorithm:

# - return 0 if the none of the nums in the array appear at least twice 
# - get hash of numbers and frequencies
# - initialize counter variable 
# - iterate over result hash 
# - for each value, divide it by 2 and add it to counter variable 
# - return counter 

# Code: 

def get_frequencies(array)
  result = {}
  array.each do |num|
    if array.count(num) >= 2 
      result[num] = array.count(num)
    end 
  end 
  result 
end 

def pairs(array)
  return 0 if array.none? { |num| array.count(num) >= 2 }
  hash = get_frequencies(array)
  counter = 0
  hash.each do |_, v| 
    counter += v / 2
  end 
  counter
end 

p pairs([3, 1, 4, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7]) == 3
p pairs([2, 7, 1, 8, 2, 8, 1, 8, 2, 8, 4]) == 4
p pairs([]) == 0
p pairs([23]) == 0
p pairs([997, 997]) == 1
p pairs([32, 32, 32]) == 1
p pairs([7, 7, 7, 7, 7, 7, 7]) == 3
# March 27, 2025

# Generate all sequential pairs of an array.

# - Given a method `sequential_pairs` which takes one array as input 
# - Iterate over the input array 
# - Initialize two `counter` variables to track which index we're currently on
# - Initialize a new array

def sequential_pairs(array)
  counter1 = 0
  counter2 = 1
  new_arr = []
  loop do 
    new_arr << [array[counter1], array[counter2]]
    counter1 += 1 
    counter2 += 1
    break if counter2 == array.size 
  end 
  new_arr
end 

p sequential_pairs([1, 2, 3, 4, 5]) == [[1, 2], [2, 3], [3, 4], [4, 5]] # => true
p sequential_pairs([7, 3, 9, 6, 2]) == [[7, 3], [3, 9], [9, 6], [6, 2]] # => true
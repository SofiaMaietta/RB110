# March 8, 2025     Combine Two Lists

# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation. You may assume that both input Arrays are non-empty, and that they have the same number of elements.

### Algorithm ###

# - Given a method `interleave` which takes two arrays as arguments:
# - Initialize a counter variable 
# - Initialize a new array 
# - Create a loop 
# - Push the first element of array1 into the new array 
# - Push the first element of array2 into the new array
# - Continue adding alternating elements from each array
# - Increment `counter` by one on each iteration 
# - Break out of the loop if `counter` is equal to the size of the first array 
# - Return the new array


### Code ###

def interleave(array1, array2)
  counter = 0
  new_array = []
  loop do 
    new_array << array1[counter]
    new_array << array2[counter]
    counter += 1
    break if counter == array1.size 
  end 
  new_array
end 

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c'] # => true


# Using Zip

array1 = [4, 5, 6]
array2 = ["D", "E", "F"]

p array1.zip(array2) # => [[4, "D"], [5, "E"], [6, "F"]]
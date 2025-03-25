# March 9, 2025       Multiply Lists 

# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

### Algorithm ### 

# - Given a method `multiply_list` which takes two arrays as arguments:
# - Initialize a counter variable
# - Iterate over the first array using each_with_object which will also initialize a new array 
# - For each element in array1, multiply that element by the element of array2 at the index specified by counter 
# - Push the result into the new array 
# - Increment counter by one on each iteration
# - Return the new array 


### Code ### 

def multiply_list(arr1, arr2)
  counter = 0
  arr1.each_with_object([]) do |num, new_arr|
    new_arr << num * arr2[counter]
    counter += 1 
  end 
end 

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


# Further Exploration: Write a one line version of this method using Array#zip

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |pair| pair[0] * pair[1] }
end 

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
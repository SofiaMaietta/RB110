# April 21, 2025      Create Your Own Transpose Method 

# Write a method called transpose that takes a matrix (an array of arrays) as an argument and returns a new matrix where the columns and rows of the original matrix are swapped. In other words, the value at row i and column j in the original matrix should be at row j and column i in the returned matrix.

# The method should:
# - Not modify the original matrix
# - Work with any matrix size (including non-square matrices)
# - Return a new matrix with the dimensions swapped (an a×b matrix becomes an b×a matrix)
# - Handle empty matrices appropriately
# - Preserve all values from the original matrix

# Algorithm:

# - Initialize an empty array called `new_matrix` that we will push our new subarrays into 
# - Initialize a variable called `inner_index` that represents the index of each element in the subarrays
# - Create a loop
# - Initialize a variable called `new_array` which will represent each new subarray that we are bulding
# - Iterate over each subarray in our original matrix
# - Push the first element of each subarray into `new_array`
# - Once that subarray is completed, push it into `new_matrix`
# - Repeat this process, moving onto the second element of each original subarray
# - Continue until you have reached the last element of each original subarray 
# - Return the final `new_matrix` array, which represents our transposed matrix
# - NOTE: We could have also used each_with_object to build our new matrix

def transpose(matrix)
  new_matrix = []
  inner_index = 0
  loop do 
    new_array = []
    matrix.each do |subarray|
      new_array << subarray[inner_index]
    end 
    new_matrix << new_array
    inner_index += 1 
    break if inner_index == matrix.first.length 
  end 
  new_matrix
end


# Test Case 1: Square matrix
matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
p transpose(matrix) == [[1, 4, 7], [2, 5, 8], [3, 6, 9]]

# Original matrix should remain unchanged
p matrix == [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# Test Case 2: Non-square matrix
matrix = [
  [1, 2, 3, 4],
  [5, 6, 7, 8]
]
p transpose(matrix) == [[1, 5], [2, 6], [3, 7], [4, 8]]

# Test Case 3: Single row matrix
p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]

# Test Case 4: Single column matrix
p transpose([[1], [2], [3]]) == [[1, 2, 3]]
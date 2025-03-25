# March 7, 2025       Reversed Arrays (Part 1)

# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object. You may not use Array#reverse or Array#reverse!

### Algorithm ###

# - Given a method called `reverse!` which takes one array as an argument:
# - Initialize an empty array called `new_array`
# - Initialize local variable `counter` which references -1
# - Iterate over the input array using `each`
# - For each element in the input array, starting with the last element, push that element into `new_array`
# - Decrement counter by one for each iteration
# - (The elements are now reversed in `new_array`)
# - Empty the input array using `clear`
# - Then transfer those elements back into `input_array`
# - Iterate over `new_array` using `each`
# - For each element in `new_array`, push that element into `input_array`
# - Return `input_array`


### Code ###

def reverse!(input_array)
  new_array = []
  counter = -1
  
  input_array.each do |element|
    new_array << input_array[counter]
    counter -= 1 
  end
  
  input_array.clear

  new_array.each do |element|
    input_array << element 
  end 

  input_array
end


list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result == [1, 4, 3, 2, 1] # true
p list == [1, 4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
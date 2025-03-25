# March 21, 2025  

# Write a method that takes an array of integers and returns a hash with keys of 'even' and 'odd' and values of the sum of the even and odd numbers, respectively.


### Problem ### 

# Input: array of integers
# Output: hash

# Explicit Req:
# - return a hash
# - the keys should be `even` and `odd`
# - the values should be the sum of the even and odd numbers in the array

# Questions:
# - What to do if an empty array is passed in as an argument? 

### Examples / Test Cases ###

# p sum_even_odd([1, 2, 3, 4, 5]) == {'even' => 6, 'odd' => 9}

### Data Structure ###

# Array, hash

### Algorithm ### 

# - Given a method `sum_even_odd` which takes an array as an argument:
# - Initialize a hash with default values of 0
# - Iterate over the input array
# - If the current number is even, increment the value of the key `even` by that number 
# - If the current number is odd, increment the value of the key `odd` by that number 
# - Return the hash

### Code ###

def sum_even_odd(array)
  hash = Hash.new(0)
  array.each do |num|
    if num.even?
      hash['even']+= num 
    else
      hash['odd']+= num 
    end 
  end 
  hash
end 

p sum_even_odd([1, 2, 3, 4, 5]) == {'even' => 6, 'odd' => 9}
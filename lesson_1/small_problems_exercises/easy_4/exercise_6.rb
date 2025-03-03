# March 2, 2025     Running Totals 

# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# A running total is the sum of all values in a list up to and including the current element. Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), while the running total at index 3 is 47 (14 + 11 + 7 + 15).


### Examples/Test Cases ###

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []



### Algorithm ### 

# - Initialize local variable `sum` which references 0
# - Iterate over the input array using `map` which will return a new array
# - For each number of the input array, reassign sum to reference the return value of adding sum and the current number
# - Return this new array 


### Original Code ### 

def running_total(array)
  sum = 0
  array.map { |num| sum += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []


### each_with_object ### 

def running_total(array)
  sum = 0
  array.each_with_object([]) do |num, array|
    array << sum += num
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
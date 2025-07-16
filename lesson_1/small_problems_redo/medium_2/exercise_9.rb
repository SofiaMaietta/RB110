# May 21, 2025      Bubble Sort 

# A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

# Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

# [1, 2, 3, 4, 5]

# Algorithm: 

# - Create a loop 
  # - Iterate over the input array, comparing each consecutive pair of numbers 
  # - To do this, iterate over a range of indices starting at 0 and going up to the length of the array minus 2, `first`
  # - Then, iterate over a range of indices starting at first plus 1 and going up to the length of the array minus 2 `last`
  # - If `first` is bigger than `last`, swap their positions 
  # - Break out of the loop if the array is equal to the array, sorted 
# - Return the mutated array 

# Code: 

def bubble_sort!(array)
  loop do 
    (0..array.length - 2).each do |first|
      (first + 1..array.length - 1).each do |last|
        if array[first] > array[last]
          array[first], array[last] = array[last], array[first]
        end 
      end 
    end 
    break if array == array.sort 
  end 
  array 
end


array = [5, 3]
p bubble_sort!(array) == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array) == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array) == ["Alice", "Bonnie", "Kim", "Pete", "Rachel", "Sue", "Tyler"]
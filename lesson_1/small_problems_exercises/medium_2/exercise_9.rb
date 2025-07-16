# April 19, 2025      Bubble Sort

# A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

# Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

# Algorithm #

# - Create an outer loop using loop do
# - Within the outer loop, iterate over the indices of the input array
# - Use these indices to access each pair of numbers up until the last two numbers
# - If the first number in the pair is greater than the second, swap them
# - Break out of the outer loop if the input array is equal to the sorted version of the input array 
# - Return the mutated input array

def bubble_sort!(arr)
  loop do 
    (0..arr.length - 2).each do |index|
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
      end 
    end 
    break if arr == arr.sort
  end 
  arr 
end 

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
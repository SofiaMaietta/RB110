# March 9, 2025       How Many 

# Write a method that counts the number of occurrences of each element in a given array. The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

def count_occurrences(array)
  hash = {}
  array.each do |element|
    hash[element] = array.count(element)
  end 
  hash.each do |element, count|
    puts "#{element} => #{count}"
  end
end 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# Expected Output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
# March 23, 2025      Grocery List

# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Algorithm 

# - For the number of times specified by the second element in each nested array, push the first element of the nested array into a new array 
# - Return the new array

def buy_fruit(array)
  new_array = []
  array.each do |sub_array|
    sub_array[1].times do
      new_array << sub_array[0]
    end 
  end 
  new_array
end 

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas", "bananas"]
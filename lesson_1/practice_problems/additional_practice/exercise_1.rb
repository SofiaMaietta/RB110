# March 25, 2025

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

result = flintstones.each_with_index.with_object({}) do |(name, index), hash|
  hash[name] = index 
end 

p result
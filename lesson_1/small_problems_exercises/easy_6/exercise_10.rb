# March 6, 2025       Mutation

# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []

array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

puts array2

# This code will print:
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

# This is because on line 8, we are pushing each element from array1 into array2. This means that the elements in array2 share a reference with the elements in array1, so they are the same objects in memory. Therefore, when we mutate the values of "Curly", "Shemp", and "Chico" from array1, the corresponding values in array2 are also mutated, because of the shared reference. It's worth noting that while the arrays themselves are separate objects, the elements within both arrays are the same objects, which is why the mutation of the elements in array1 affects the elements in array2. 
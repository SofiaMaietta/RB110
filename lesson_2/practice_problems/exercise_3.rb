# March 30, 2025

# For each of these collection objects demonstrate how you would reference the letter 'g'.

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

p arr1[2][1][3]


arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

p arr2[1][:third][0]


arr3 = [['abc'], ['def'], {third: ['ghi']}]

p arr3[2][:third][0][0]


hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

p hsh1['b'][1]


hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

p hsh2[:third].keys[0] # Hash#keys returns an array, and 0 is the index of the element that we want to retrieve

# OR 

p hsh2[:third].key(0) # here, 0 is the value associated with the key that we want to retrieve
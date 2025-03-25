# March 11, 2025      All Substrings

# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest. You may (and should) use the leading_substrings method you wrote in the previous exercise:

### Algorithm ### 

# - Create a loop 
# - Iterate from the first character `first` which starts at 0, up to the last character `last`: 
# - For each character in this string: 
# - Slice the string from the first character to the element at position `index` 
# - (element 0 to 0, then 0 to 1, then 0 to 2, until the last element is reached)
# - Each time, append the result to an arrray called `result`
# - On the first iteration, the array would look like ["a", "ab", "abc", "abcd", "abcde"]
# - Outside of this iteration, once the iteration has stopped:
# - Increment `first` by one, so that instead of starting to slice our substring at element 0, we now start at element 1 
# - Then, we would be slicing the string from element 1 to 1, then 1 to 2, then 1 to 3, until the end is reached)
# - Break out of the loop if `first` equals the number of characters in the string 
# - (This ensures that we do not try to access an index that does not exist)
# - Finally, return `result`

### Code ###

def substrings(string)
  result = []
  first = 0
  last = string.size - 1
  loop do 
    first.upto(last) do |index| # index starts counting at `first`, and increases until it reaches `last`
      result << string[first..index]
    end
    first += 1 
    break if first == string.size 
  end 
  result
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
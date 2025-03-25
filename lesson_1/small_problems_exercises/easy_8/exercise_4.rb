# March 12, 2025      Palindromic Substrings

# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.


### Algorithm ###

# - Write a helper method to determine if a string is a palindrome: 
  # - If the string has more than one character and the string equals the string reversed, return true
  # - Else, return false
# - Given a method called `palindromes` which takes a string as an argument:
# - If the current substring is a palindrome, push it into the `result` array 



### Code ###

def is_a_palindrome?(string)
  string.length > 1 && string == string.reverse
end

def palindromes(string)
  result = []
  first = 0
  last = string.size - 1
  loop do 
    first.upto(last) do |index| # index starts counting at `first`, and increases until it reaches `last`
      current_substring = string[first..index] 
      result << current_substring if is_a_palindrome?(current_substring)
    end
    first += 1 
    break if first == string.size 
  end 
  result
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
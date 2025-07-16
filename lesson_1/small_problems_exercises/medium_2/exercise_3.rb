# April 18, 2025        Lettercase Percentage Ratio

# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

def letter_percentages(string)
  hash = {uppercase: 0, lowercase: 0, neither: 0}
  string.chars.each do |char|
    if ("A".."Z").include?(char)
      hash[:uppercase] += 1
    elsif ("a".."z").include?(char)
      hash[:lowercase] += 1
    else 
      hash[:neither] += 1
    end 
  end 
  hash.each do |k, v|
    hash[k] = v / string.size.to_f * 100
  end
  hash 
end 

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
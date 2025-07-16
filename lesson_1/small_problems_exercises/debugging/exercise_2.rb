# April 19, 2025      HEY YOU!

# String#upcase! is a destructive method, so why does this code print 'HEY you' instead of 'HEY YOU' ? 
# Modify the code so that it produces the expected output.

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# ANSWER: 

# This code does not produce the expected output because although we are using the mutating upcase! method, we are not mutating the string referenced by name. What we are mutating is each character of the array that is returned by calling the chars method on name. Therefore, we are upcasing every letter in this array, but we are not doing anything with name itself.

# To fix this, we first must invoke the join method on the array once we are done capitalizing all the letters. This will join the array back into one string. We should then reassign name to reference this new, capitalized string. Therefore, when we output name in the last line of the method, we will see that it has indeed been capitalized as expected. 

# SOLUTION: 

def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you')
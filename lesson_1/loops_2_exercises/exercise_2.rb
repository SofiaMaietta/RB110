# February 27, 2025   Catch the Number

# Modify the following code so that the loop stops if number is equal to 10 or between 0 and 10.

# loop do
#   number = rand(100)
#   puts number
# end


loop do
  number = rand(100)
  puts number
  break if number < 11
end
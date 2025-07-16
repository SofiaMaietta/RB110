# April 20, 2025       Neutralizer 

# We wrote a neutralize method that removes negative words from sentences. However, it fails to remove all of them. What exactly happens?

# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.each do |word|
#     words.delete(word) if negative?(word)
#   end

#   words.join(' ')
# end

# def negative?(word)
#   [ 'dull',
#     'boring',
#     'annoying',
#     'chaotic'
#   ].include?(word)
# end

# puts neutralize('These dull boring cards are part of a chaotic board game.')

# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.


# SOLUTION: 

def neutralize(sentence)
  words = sentence.split(' ')
  words.clone.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')


# ANSWER:

# The issue here arises because we are mutating an array at the same time that we are iterating over it. It's recommended to avoid doing this in Ruby because it can lead to unexpected behavior. To fix this, I simply invoked the clone method on the words array. Therefore, we are iterating over the cloned array (which is a different object) while we delete words from the original array. This will give us our expected output. 

# Other fixes include using select! or reject! or creating a new array and pushing the "positive" words into that array while skipping over the "negative" words. You could then join the new array into a string and return the string. 
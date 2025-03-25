# March 24, 2025

# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# `shift` will destructively remove first key value pair in this hash and return it as a two item array. 

# If we didn't know this, we could check the Ruby docs for Hash#shift.
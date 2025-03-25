# March 24, 2025

# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# I haven't encountered this method before, so I can check the Ruby docs to find out about its functionality. 

# Answer: Returns a new Array containing the first n element of self, where n is a non-negative Integer; does not modify self.

# So this code would return [1, 2] and this method is non destructive. 
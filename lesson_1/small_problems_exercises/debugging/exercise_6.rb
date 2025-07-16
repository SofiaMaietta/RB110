# April 20, 2025      Getting Things Done

# We wrote a method for moving a given number of elements from one array to another. We decide to test it on our todo list, but invoking move on line 11 results in a SystemStackError. What does this error mean and why does it happen?

def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo == ['coffee with Tom']
p done == ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# ANSWER:

# We get this error because there is no condition that causes the recursive calls in our method to stop, meaning it goes on infinitely. To fix this, we add a return statement in the beginning of our method to return from the method if n == 0 (once there are no more items to move from one list to another). 
# April 19, 2025      Countdown 

# Our countdown to launch isn't behaving as expected. Why? Change the code so that our program successfully counts down from 10 to 1.

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'

# ANSWER: 

# - This code does not behave as expected because there is no countdown from 10 to 1; 10 is repeatedly output instead. Here's why this is happening: In our `decrease` method, we are reassigning counter to reference a new object: the result of counter - 1. However, this reassignment will not affect the original object outside of the method because we are merely causing the method parameter to point to a new object. Therefore, when we invoke `decrease` from within our do..end block, we are not actually mutating local variable counter because the reassignment from within the `decrease` does not persist outside of the method. 

# - To fix this, I removed the `decrease` method because it will never be able to affect any integers in the outer scope that are being passed in. Instead, I added a line in the block to decrease counter by 1 on each iteration. In this line, since counter is being reassigned to counter - 1 on each iteration, this reassignment will directly affect counter and cause the program to count down appropriately. 

# SOLUTION

counter = 10

10.times do
  puts counter
  counter -= 1
end

puts 'LAUNCH!'
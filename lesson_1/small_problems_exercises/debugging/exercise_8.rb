# April 20, 2025      Password 

# The following code prompts the user to set their own password if they haven't done so already, and then prompts them to login with that password. However, the program throws an error. What is the problem and how can you fix it?

# Once you get the program to run without error, does it behave as expected? Verify that you are able to log in with your new password.

# password = nil

# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   password = new_password
# end

# def verify_password
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp

#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end

# if !password
#   set_password
# end

# verify_password



# ANSWER: 

# The issue with this code is that a NameError is thrown from `if input == password`. This NameError is thrown because we are trying to access a local variable `password` that is not in scope within the `verify_password` method. This means that it was not initialized within the method and it also was not passed in as an argument.

# To fix this, I returned `new_password` from the `set_password` method. Then I reassigned `password` to reference the return value of the `set_password` method within our conditional at the end. This way, we have a local variabe to store our password that was collected from the `set_password` method. Now, we can change the `verify_password` to have one parameter. This will allow us to pass in an argument to `verify_password` when we invoke it. The argument that I passed in is the object referenced by the `password` variable that we just intiialized. Now the program runs successfully without throwing a NameError, and it also authenticates properly. 


# SOLUTION: 

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Enter your password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)
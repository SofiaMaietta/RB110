# April 14, 2025    1000 Lights

# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# If n is 5, then there are 5 switches, and we iterate through all the switches 5 times
# For each number from 1 to n, toggle the switches at the (indexes + 1) that are multiples of that number 

def light_switcher(n)
  switches = (1..n).each_with_object({}) { |number, hash| hash[number] = false }
  1.upto(n) do |i|
    switches.each_with_index do |(key, value), index|
      switches[key] = !value if (index + 1) % i == 0 
    end 
  end 
  switches.select {|key, value| value == true}.keys
end

p light_switcher(5) == [1, 4]
p light_switcher(10) == [1, 4, 9]
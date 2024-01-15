# frozen_string_literal: true

# You have a bank of switches before you, numbered from 1 to n.
# Each switch is connected to exactly one light that is initially off.
# You walk down the row of switches and toggle every one of them.
# You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on.
# On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on.
# You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array
# that identifies which lights are on after n repetitions.

# Example with n = 5 lights:
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# the total number of switches.

# output:
# an Array that identifies which lights are on after n repetitions.

# Make the requirements explicit Identify rules:
# Write a method that takes one argument,
# the total number of switches,
# and returns an Array that identifies which lights are on after n repetitions.

# Mental model of the problem (optional):
# You have a bank of switches before you, numbered from 1 to n.
# Each switch is connected to exactly one light that is initially off.
# You walk down the row of switches and toggle every one of them.
# You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on.
# On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on.
# You repeat this process and keep going until you have been through n repetitions.
# Write a method that takes one argument,
# the total number of switches,
# and returns an Array that identifies which lights are on after n repetitions.
# Example with n = 5 lights:
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# Examples / Test Cases, Validate understanding of the problem:
# Test the function with n = 5 and n = 10
# test_n_5 = toggle_switches(5)
# test_n_10 = toggle_switches(10)
# puts "With 5 lights: #{test_n_5}"
# puts "With 10 lights: #{test_n_10}"

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the toggle_switches method accepts the (n) parameter and is defined as the following:
# the lights varible is assinged the result of creating a new array that contains n and false elements.
# execute the following code for each element in the inclusive range from the integer 1 to n parameter:
# execute the following block of code when begin iteration at the result of the i block parameter
# subtracted by the integer 1 add the i block parameter to the current value in each step the iteration
# will go up to, but not include the result of the n parameter subtracted by the integer 1
# the value located at the j block parameter index location in the lights varible is assinged logical
# not version of the value located at the j block parameter index location in the lights varible
# this is the last line of the .step method.






and Code. Implementation of Algorithm:

# Test the function with n = 5 and n = 10
test_n_5 = toggle_switches(5)
test_n_10 = toggle_switches(10)

puts "With 5 lights: #{test_n_5}"
puts "With 10 lights: #{test_n_10}"

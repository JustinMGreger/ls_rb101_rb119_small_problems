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
# this is the last line of the .each method.
# apply the following block of code to each element in the lights varible and returns a new array
# containing the results of running that block once for every element: iterate over the array, and
# for each element, it executes the following block providing both the element and its index.
# The block then prints both the index and the element: { |light, index| index + 1 if light }
# which if light is true then add the integer 1 to the index block parameter then iterate over the
# array and remove every nil element.
# this is the last line of the toggle_switches method.

# and Code. Implementation of Algorithm:
# def toggle_switches(integer)
#  lights = Array.new(integer, false)
#  (1..integer).each do |i|
#    (i - 1).step(integer - 1, i) do |j|
#      lights[j] = !lights[j]
#    end
#  end
#  lights.map.with_index { |light, index| index + 1 if light }.compact
# end

# Test the function with integer = 5 and integer = 10
# testinteger5 = toggle_switches(5)
# testinteger10 = toggle_switches(10)
# puts "With 5 lights: #{testinteger5}"
# puts "With 10 lights: #{testinteger10}"

# LS Solution:
# initialize the lights hash
# def initialize_lights(number_of_lights)
#   lights = Hash.new
#   1.upto(number_of_lights) { |number| lights[number] = "off" }
#   lights
# end
# return list of light numbers that are on
# def on_lights(lights)
#   lights.select { |_position, state| state == "on" }.keys
# end
# toggle every nth light in lights hash
# def toggle_every_nth_light!(lights, nth)
#   lights.each do |position, state|
#     if position % nth == 0
#       lights[position] = (state == "off") ? "on" : "off"
#     end
#   end
# end
# Run entire program for number of lights
# def toggle_lights(number_of_lights)
#   lights = initialize_lights(number_of_lights)
#   1.upto(lights.size) do |iteration_number|
#     toggle_every_nth_light!(lights, iteration_number)
#   end
#   on_lights(lights)
# end
# p toggle_lights(1000)

# Further Exploration

# There are a few interesting points about this exercise that we can explore:

# Do you notice the pattern in our answer?
# Yes.
# Every light that is on is a perfect square.
# Why is that?
# Factors come in pairs, and toggling occurs for each factor. 
# A number is a perfect square if and only if it has an odd number of factors. 

# What are some alternatives for solving this exercise?
# Calculate the square of each integer up to the square root of the total number of lights.
# Object-Oriented Approach: create a `Light` class that has an `on` state and a `toggle` method. 
# Create an array or hash of `Light` objects and iterate over them, toggling them as per the rules.
# Use map and reduce functions to might make the code more concise and expressive.
# Parallelizing the toggling computation.
# If the number of lights is fixed and known in advance, you could pre-calculate the results and store them.

# What if we used an Array to represent our 1000 lights instead of a Hash, how would that change our code?
# def initialize_lights(number_of_lights)
#   Array.new(number_of_lights, 'off')
# end
# def toggle_every_nth_light!(lights, nth)
#   lights.each_with_index do |state, index|
#     if ((index + 1) % nth).zero?
#       lights[index] = state == 'off' ? 'on' : 'off'
#     end
#   end
# end
# def on_lights(lights)
#   lights.map.with_index { |state, index| index + 1 if state == 'on' }.compact
# end
# def toggle_lights(number_of_lights)
#   lights = initialize_lights(number_of_lights)
#   1.upto(lights.size) do |iteration_number|
#     toggle_every_nth_light!(lights, iteration_number)
#   end
#   on_lights(lights)
# end

p toggle_lights(1000)

We could have a method that replicates the output from the description of this problem 
(i.e. "lights 2, 3, and 5 are now off; 1 and 4 are on.")
How would we go about writing that code?

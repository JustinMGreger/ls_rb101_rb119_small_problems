# frozen_string_literal: true

# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array.
# The array will never be empty and the numbers will always be positive integers.
# Your result should also be an integer.

# Don't use the Array#sum method for your solution - see if you can solve this problem using iteration more directly.

# Examples:
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# one argument that is an array containing integers

# output:
# the average of all numbers in the array.

# Make the requirements explicit Identify rules:
# Write a method that takes one argument, an array containing integers,
# return the average of all numbers in the array.
# The array will never be empty and the numbers will always be positive integers.
# Your result should also be an integer.
# Don't use the Array#sum method for your solution
# - see if you can solve this problem using iteration more directly.

# Mental model of the problem (optional):
# def average(array_parameter)
# return the average of all numbers in the array.
# solve this problem using iteration more directly.

# Examples / Test Cases, Validate understanding of the problem:
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the average method accepts the (array_parameter) and is defined as the following:
# the sum variable is assigned the integer 0.
# pass the following block of code to each element in the array_parameter:
# the sum variable is assigned the result of adding the num block parameter to the sum variable.
# return the result of dividing the sum variable by the number of elements in the array_parameter.

# and Code. Implementation of Algorithm:
# def average(array_parameter)
#   sum = 0
#   array_parameter.each do |num|
#     sum += num
#   end
#   sum / array_parameter.size
# end

# LS Solution:
# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end

# Further Exploration

# Currently, the return value of average is an Integer.
# When dividing numbers, sometimes the quotient isn't a whole number,
# therefore, it might make more sense to return a Float.
Can you change the return value of average from an Integer to a Float?


# tests:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

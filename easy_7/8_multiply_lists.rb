# frozen_string_literal: true

# Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array
# that contains the product of each pair of numbers from the arguments that have the same index.
# You may assume that the arguments contain the same number of elements.

# Examples:
# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# two Array arguments in which each Array contains a list of numbers.
# You may assume that the arguments contain the same number of elements.

# output:
# returns a new Array that contains the product of each pair of numbers from the arguments that have the same index.

# Make the requirements explicit Identify rules:
# You may assume that the arguments contain the same number of elements.
# Write a method that takes two Array arguments
# each Array contains a list of numbers.
# return a new Array that contains the product of each pair of numbers from the arguments that have the same index.

# Mental model of the problem (optional):
# def multiply_list(array_one, array_two)
# new_array = the product of each pair of numbers from the arguments that have the same index.
# return new_array

# Examples / Test Cases, Validate understanding of the problem:
# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Data Structure, How we represent data that we will work with when converting the input to output:
# array

# Algorithm, Steps for converting input to output:
# the multiply_list method accepts the (array_one, array_two) parameters.
# the new_array varible is assigned the product of each pair of numbers from the array_one and array_two parameters
# that have the same index.

# and Code.” Implementation of Algorithm:
def multiply_list(array_one, array_two)
  array_one.zip(array_two).map { |a, b| a * b }
end

# tests:
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

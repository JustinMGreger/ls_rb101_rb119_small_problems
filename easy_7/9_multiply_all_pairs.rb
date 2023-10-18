# frozen_string_literal: true

# Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array that contains the product of every pair of numbers that can be formed
# between the elements of the two Arrays.
# The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Examples:
# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# two Array arguments in which each Array contains a list of numbers, 
# You may assume that neither argument is an empty Array.

# output:
# a new Array that contains the product of every pair of numbers that can be formed between the elements of the
# two Arrays that are sorted by increasing value.

# Make the requirements explicit Identify rules:
# multiply_all_pairs([integers], [integers])
# return a new Array that contains the product of every pair of numbers that can be formed between the elements
# of the two Arrays that is sorted by increasing value.

# Mental model of the problem (optional):
# def multiply_all_pairs(array_one, array_two)
# new_array = the product of every pair of numbers that can be formed between the elements of the array_one and
# array_two that is sorted by increasing value.
# return new_array 
# end

#Examples / Test Cases, Validate understanding of the problem:
# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the multiply_all_pairs method accepts the (array_one, array_two) parameters and is defined as the following:

  new_array = the product of every pair of numbers that can be formed between the elements of the array_one and
  array_two that is sorted by increasing value.

  return new_array 
# and this is the last line of the multiply_all_pairs method.

and Code.” Implementation of Algorithm:

# tests:
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# frozen_string_literal: true

# Write a method that takes an Array of numbers
# and then returns the sum of the sums of each leading subsequence for that Array.
# You may assume that the Array always contains at least one number.

# Examples:
# p sum_of_sums([3, 5, 2]) == 3 + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == 1 + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# an Array of numbers that always contains at least one number.

# output:
# the sum of the sums of each leading subsequence for that Array.

# Make the requirements explicit Identify rules:
# Write a method that takes an Array of numbers.
# return the sum of the sums of each leading subsequence for that Array.
# You may assume that the Array always contains at least one number.

# Mental model of the problem (optional):
# def sum_of_sums(numbers)
# determine how many elements are the numbers parameter.
# "(#{element_one}) + (#{element_one} + #{element_two}) + (#{element_one} + #{element_two} + #{element_three})"
# return the sum of the sums of each leading subsequence for that Array.

# Examples / Test Cases, Validate understanding of the problem:
# p sum_of_sums([3, 5, 2]) == 3 + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == 1 + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:




and Code.” Implementation of Algorithm:

# tests:
p sum_of_sums([3, 5, 2]) == 3 + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == 1 + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

# frozen_string_literal: true

# Write a method that takes two Arrays as arguments,
# and returns an Array that contains all of the values from the argument Arrays.
# There should be no duplication of values in the returned Array,
# even if there are duplicates in the original Arrays.

# Example
# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# two Arrays as arguments

# output:
# a new Array that contains all of the non duplicate values from the argument Arrays

# Make the requirements explicit Identify rules:
# the method takes two Arrays as arguments
# returns a new Array that contains all of the non duplicate values from the argument Arrays

# Mental model of the problem (optional):
# the method takes 2 arrays as arguments
# then removes duplicate values
# and assigns this to a new array
# which is returned.

# Examples / Test Cases, Validate understanding of the problem:
# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Data Structure, How we represent data that we will work with when converting the input to output:
# Array

# Algorithm, Steps for converting input to output:
# the method takes 2 arrays as arguments
# the arrays are combined into 1 array.
# the duplicate values are removed.
# the modified array is returned.

# and Code." Implementation of Algorithm:
# def merge(array_one, array_two)
#   array_one.union(array_two)
# end

# LS solution:
# def merge(array_1, array_2)
#   array_1 | array_2
# end

# Further Exploration

# How did you go about solving this one? 
# def merge(array_one, array_two)
#   array_one.union(array_two)
# end

Using this method for set union is convenient, but what if we didn't have it?
There are certainly a few other ways to go about solving this exercise.

# test:
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

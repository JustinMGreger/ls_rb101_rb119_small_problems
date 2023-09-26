# frozen_string_literal: true

# Write a method that combines two Arrays passed in as arguments,
# and returns a new Array that contains all elements from both Array arguments,
# with the elements taken in alternation.

# You may assume that both input Arrays are non-empty,
# and that they have the same number of elements.

# Example:
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem, 

# Identify expected input: 
# two non-empty Arrays that have the same number of elements.

# output:
# a new Array of all elements with the elements taken in alternation.

# Make the requirements explicit Identify rules:
# both input Arrays are non-empty.
# both input Arrays have the same number of elements.
# write a method that combines two Arrays passed in as arguments.
# return a new Array.
# the new Array contains all elements from both Array arguments.
# the elements in the new Array alternate from their source arrays.

Mental model of the problem (optional):

# both input Arrays are non-empty.
# both input Arrays have the same number of elements.
# this means iteration can be used as it will stop at the same time.
# write a method that combines two Arrays passed in as arguments.
# return a new Array.
# the new Array contains all elements from both Array arguments.
# the elements in the new Array alternate from their source arrays.









# Examples / Test Cases, Validate understanding of the problem:
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:

# tests:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

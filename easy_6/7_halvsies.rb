# frozen_string_literal: true

# Write a method that takes an Array as an argument,
# and returns two Arrays (as a pair of nested Arrays) that contain the first half
# and second half of the original Array, respectively.
# If the original array contains an odd number of elements,
# the middle element should be placed in the first half Array.

# Examples:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem, 

Identify expected input: 
output:
Make the requirements explicit Identify rules:
Mental model of the problem (optional):
Examples / Test Cases, Validate understanding of the problem:
Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:

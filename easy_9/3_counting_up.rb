# frozen_string_literal: true

# Write a method that takes an integer argument,
# and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

# Examples:
# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# integer argument.

# output:
# returns an Array of all integers, in sequence, between 1 and the argument.

# Make the requirements explicit Identify rules:
# Write a method that takes an integer argument,
# and returns an Array of all integers, in sequence, between 1 and the argument.
# You may assume that the argument will always be a valid integer that is greater than 0.

# Mental model of the problem (optional):
# def sequence (integer)
# new_array = [1..integer]

# Examples / Test Cases, Validate understanding of the problem:
# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the sequence method accepts the integer parameter and is defined as the following:
# the inclusive range from the integer 1 to the integer parameter is converted to array form.
# this is the last line of the sequence method.

# and Code. Implementation of Algorithm:
# def sequence(integer)
#   (1..integer).to_a
# end

# LS Solution:
def sequence(number)
  (1..number).to_a
end

# tests:
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

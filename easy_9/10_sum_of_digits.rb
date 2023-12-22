# frozen_string_literal: true

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Examples:
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a positive integer argument.

# output:
# the sum of its digits.

# Make the requirements explicit Identify rules:
# Write a method that takes one argument, a positive integer, and returns the sum of its digits.
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# Mental model of the problem (optional):
# def sum(integer)
# seperate the integer parameter into a collection of integers.
# return the sum of the collection of integers.
# Write this without any basic looping constructs (while, until, loop, and each).

# Examples / Test Cases, Validate understanding of the problem:
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the sum method accepts the (integer) parameter and is defined as the following:
# the integer parameter is broken into an array containing
# each digit of the integer as an element, in reverse order which then passes
# the result of adding the current element to the accumulator.
# this is the last line of the sum method.

# and Code. Implementation of Algorithm:
def sum(integer)
  integer.digits.reduce(0) { |acc, digit| acc + digit }
end

# tests:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# frozen_string_literal: true

# Create a method that takes two integers as arguments.
# The first argument is a count, and the second is the first number of a sequence that your method will create.
# The method should return an Array that contains the same number of elements as the count argument,
# while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater,
# while the starting number can be any integer value.
# If the count is 0, an empty list should be returned.

# Examples:
# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1_000_000) == []

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# two integers as arguments.
# The first argument is a count, and the second is the first number of a sequence that your method will create. 

# output:
# an Array that contains the same number of elements as the count argument,
# while the values of each element will be multiples of the starting number.

# Make the requirements explicit Identify rules:
# Create a method that takes two integers as arguments.
# The first argument is a count, and the second is the first number of a sequence that your method will create.
# The method should return an Array that contains the same number of elements as the count argument,
# while the values of each element will be multiples of the starting number.
# You may assume that the count argument will always have a value of 0 or greater,
# while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# Mental model of the problem (optional):
# def sequence(count, start)
# If the count is 0, an empty list should be returned.
# The method should return an Array that contains the same number of elements as the count argument,
# while the values of each element will be multiples of the starting number.
# You may assume that the count argument will always have a value of 1 or greater.
# while the starting number can be any integer value. 

# Examples / Test Cases, Validate understanding of the problem:
# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1_000_000) == []

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the sequence method accepts the count and start parameters and is defined as the following:
# pass the result of multiplying the block parameter by the start parameter to each element in the
# inclusive range from the integer 1 to the count parameter and return a new array of the results.

# and Code. Implementation of Algorithm:
the sequence method accepts the count and start parameters and is defined as the following:
pass the result of multiplying the block parameter by the start parameter to each element in the
inclusive range from the integer 1 to the count parameter and return a new array of the results.

# tests:
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1_000_000) == []

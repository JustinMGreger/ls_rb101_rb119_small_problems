# frozen_string_literal: true

# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

# Examples:
# diamond(1)
# *
# diamond(3)
#  *
# ***
#  *
# diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# the n odd integer.

# output:
# a 4-pointed diamond in an n x n grid.

# Make the requirements explicit Identify rules:
# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

# Mental model of the problem (optional):
# n will always be an odd integer.
# def diamond(n)
# displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method.

# Examples / Test Cases, Validate understanding of the problem:
# diamond(1)
# diamond(3)
# diamond(9)

# Data Structure, How we represent data that we will work with when converting the input to output:
# Array.

# Algorithm, Steps for converting input to output:
# the diamond method accepts the (n) parameter and is defined as the following:
# execute the following block of code to at each element starting from the range
# from the integer 1 to the n parameter upto the integer 2:
# print to the screen the result of centering the '*' string multiplied by the
# i block parameter with n block parameter number of spaces.
# this is the last line of the .step method.
# execute the following block of code to at each element starting from the range
# from the result of subtract the n parameter by the integer 2 upto the integer 1
# and subtract the integer 2 at each step:
# print to the screen the result of centering the '*' string multiplied by the
# i block parameter with n block parameter number of spaces.
# this is the last line of the .step method.
# this is the last line fo the diamond method.

and Code. Implementation of Algorithm:

# tests:
diamond(1)
diamond(3)
diamond(9)

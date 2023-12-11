# frozen_string_literal: true

# Write a method that takes a first name, a space, and a last name passed as a single String argument,
# and returns a string that contains the last name, a comma, a space, and the first name.

# Examples
# p swap_name('Joe Roberts') == 'Roberts, Joe'

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# first name, a space, and a last name passed as a single String argument.

# output:
# a string that contains the last name, a comma, a space, and the first name.

# Make the requirements explicit Identify rules:
# Write a method that takes a first name, a space, and a last name passed as a single String argument,
# and returns a string that contains the last name, a comma, a space, and the first name.

# Mental model of the problem (optional):
# def swap_name(first name, a space, and a last name passed as a single String argument)
# return a string that contains (the last name, a comma, a space, and the first name)

# Examples / Test Cases, Validate understanding of the problem:
# p swap_name('Joe Roberts') == 'Roberts, Joe'

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the swap_name method accepts the string parameter and is defined as the following:
# the swap varible is assigned to the result of splitting the string parameter
# to an array of substrings which is reversed.
# return the result of joining the value assigned to the swap varible into a single string
# seperated by a comma and a space.

# and Code. Implementation of Algorithm:
# def swap_name(string)
#   swap = string.split.reverse
#   swap.join(', ')
# end

# LS Solution:
def swap_name(name)
  name.split(' ').reverse.join(', ')
end

# tests:
p swap_name('Joe Roberts') == 'Roberts, Joe'

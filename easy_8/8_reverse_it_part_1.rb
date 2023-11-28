# frozen_string_literal: true

# Write a method that takes one argument,
# a string,
# and returns a new string with the words in reverse order.

# Examples:
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# The tests above should print true.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a string.

# output:
# a new string with the words in reverse order.

# Make the requirements explicit Identify rules:
# Write a method that takes a string argument
# and returns a new string with the words in reverse order.

# Mental model of the problem (optional):
# def reverse_sentence(string)
# new_string = with the words from string parameter in reverse order.
# return new_string

# Examples / Test Cases, Validate understanding of the problem:
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the reverse_sentence method accepts the (string) parameter and is defined as the following:
# split the string parameter into an array of substrings.





with the words from string parameter in reverse order.







and Code. Implementation of Algorithm:

# tests:
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

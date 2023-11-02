# frozen_string_literal: true

# Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring.

# Examples:
# p leading_substrings('abc') == %w[a ab abc]
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == %w[x xy xyz xyzz xyzzy]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a string.

# output:
# a list of all substrings of a string that start at the beginning of the original string
# and arranged in order from shortest to longest substring.

# Make the requirements explicit Identify rules:
# Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring.

# Mental model of the problem (optional):
# the leading_substrings method accepts a string parameter.
# the string parameter is broken into substrings.
# the sub strings are assigned to a return_array varible.
# substrings are concatenated into a substring based on the previous substrings.
# return the return_array.

# Examples / Test Cases, Validate understanding of the problem:
# p leading_substrings('abc') == %w[a ab abc]
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == %w[x xy xyz xyzz xyzzy]

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:

# tests:
p leading_substrings('abc') == %w[a ab abc]
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == %w[x xy xyz xyzz xyzzy]

# frozen_string_literal: true

# Write a method that returns the next to last word in the String passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# Examples:
# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a string parameter that will always contain at least two words which are any sequence of non-blank characters.

# output:
# the next to last word in the string parameter where words are any sequence of non-blank characters.

# Make the requirements explicit Identify rules:
# Write a penultimate method.
# the penultimate method returns the next to last word in the string parameter.
# the string parameter will always contain at least two words and words are any sequence of non-blank characters.

# Mental model of the problem (optional):
# def penultimate method(string)
# the penultimate method returns the next to last word in the string parameter.

# Examples / Test Cases, Validate understanding of the problem:
# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the penultimate method accepts the (string) parameter and is defined as the following:
# split the string parameter into an array of words.
# return the next to last word in the array of words.

# and Code.” Implementation of Algorithm:
# def penultimate(string)
#   words = string.split
#   words[-2]
# end

# LS Solution:
# def penultimate(words)
#   words_array = words.split
#   words_array[-2]
# end

# tests:
# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# Further Exploration

# Our solution ignored a couple of edge cases because we explicitly stated that you didn't have to handle them:
# strings that contain just one word, and strings that contain no words.

# Suppose we need a method that retrieves the middle word of a phrase/sentence.
# What edge cases need to be considered?
# How would you handle those edge cases without ignoring them?
# Write a method that returns the middle word of a phrase or sentence.
# It should handle all of the edge cases you thought of.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a string of a phrase or sentence.

# output:
# the middle word.

Make the requirements explicit Identify rules:
Mental model of the problem (optional):

# Examples / Test Cases, Validate understanding of the problem:
p middle('apple orange banana') == 'orange'

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:

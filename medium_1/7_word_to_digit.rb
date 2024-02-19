# frozen_string_literal: true

# Write a method that takes a sentence string as input,
# and returns the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Example:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
# Hint 1: The String#gsub! method may prove useful in this problem.
# Hint 2: String#gsub! requires a "pattern" argument, which is typically expressed as a regular expression (regex).
# Regular expressions (regex) are very useful for string operations, but we don't cover them in any detail until RB130.
# If you haven't already read our book, Introduction to Regular Expressions, you may do so now,
# but it isn't necessary - this hint provides the only regular expression you need for this problem:
# if you have a variable named foo that contains some sort of word and want to match that word in a longer string,
# you can use the regex /\b#{foo}\b/.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a sentence string.

# output:
# a string of digits.

# Make the requirements explicit Identify rules:
# Write a method that takes a sentence string as input,
# and returns the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Mental model of the problem (optional):
# def word_to_digit(sentence_string)
# and returns the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Examples / Test Cases, Validate understanding of the problem:
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code. Implementation of Algorithm:

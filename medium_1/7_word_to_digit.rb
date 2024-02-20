# frozen_string_literal: true

# Write a method that takes a sentence string as input,
# and returns the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Example:
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
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
# p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Data Structure, How we represent data that we will work with when converting the input to output:
# Hash.

# Algorithm, Steps for converting input to output:
# freeze all string literals present in the file this makes it immutable, meaning it cannot be modified
# in any way once it is initialized. 
# the word_to_digit method accepts the (sentence) parameter and is defined as the following:
# the number_words_to_digits variable is assigned to the hash which contains:
# the 'zero' string key assigned the '0' string value ,
# followed by the 'one' string key assigned the '1' string value,
# followed by the 'two' string key is assigned the '2' string value,
# followed by the 'three' string key is assigned the '3' string value,
# followed by the 'four' string key is assigned the '4' string value,
# followed by the 'five' string key is assigned the  '5' string value,
# followed by the 'six' string key is assigned the '6' string value,
# followed by the 'seven' string key is assigned the '7' string value,

and Code. Implementation of Algorithm:

# test:
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

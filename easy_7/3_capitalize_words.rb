# frozen_string_literal: true

# Write a method that takes a single String argument
# and returns a new string that contains the original value of the argument
# with the first character of every word capitalized
# and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Examples
# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a single String argument.

# output:
# returns a new string of the original value of the argument with the first character of every word capitalized
# and all other letters lowercase.

# Make the requirements explicit Identify rules:
# def word_cap(a single String argument)
#  returns a new single String with the first character of every word capitalized and all other letters lowercase.
# You may assume that words are any sequence of non-blank characters.

# Mental model of the problem (optional):
# def word_cap(string_parameter)
# break up the string into sub strings.
# capitalize the first character of every word sub string.
# combine these modified sub strings into a new_string.
# return the new_String.
# You may assume that words are any sequence of non-blank characters.

# Examples / Test Cases, Validate understanding of the problem:
# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the word_cap method accepts the (string_parameter) parameter and is defined as the following:
# break up the string_parameter into sub strings.
# capitalize the first character of every word sub string.
# combine these modified sub strings into a new_string.
# return the new_String.

# and Code.” Implementation of Algorithm:
# def word_cap(string_parameter)
#   sub_strings = string_parameter.split(' ')
#   capitalized_sub_strings = sub_strings.map(&:capitalize)
#   capitalized_sub_strings.join(' ')
# end

# LS Solution:
# def word_cap(words)
#   words_array = words.split.map do |word|
#     word.capitalize
#   end
#   words_array.join(' ')
# end

# LS Solution 2:
# def word_cap(words)
#   words.split.map(&:capitalize).join(' ')
# end

# Further Exploration

# Ruby conveniently provides the String#capitalize method to capitalize strings.
# Without that method, how would you solve this problem?
# Try to come up with at least two solutions.

# Solution 1:
# def word_cap(words)
#   words.split.map do |word|
#     word.downcase!
#     word[0] = word[0].upcase if word[0]
#     word
#   end.join(' ')
# end

# Solution 2:
def word_cap(words)

# tests:
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

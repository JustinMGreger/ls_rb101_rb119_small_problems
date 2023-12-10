# frozen_string_literal: true

# Write a method that takes a string as an argument,
# and returns an Array that contains every word from the string,
# to which you have appended a space and the word length.

# You may assume that words in the string are separated by exactly one space,
# and that any substring of non-space characters is a word.

# Examples
# p word_lengths('cow sheep chicken') == ['cow 3', 'sheep 5', 'chicken 7']

# p word_lengths('baseball hot dogs and apple pie') ==
# ['baseball 8', 'hot 3', 'dogs 4', 'and 3', 'apple 5', 'pie 3']

# p word_lengths('It ain\'t easy, is it?') == ['It 2', 'ain\'t 5', 'easy, 5', 'is 2', 'it? 3']

# p word_lengths('Supercalifragilisticexpialidocious') ==
# ['Supercalifragilisticexpialidocious 34']

# p word_lengths('') == []

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a string argument.

# output:
# returns an Array that contains every word from the string, to which you have appended a space and the word length.

# Make the requirements explicit Identify rules:
# Write a method that takes a string as an argument,
# and returns an Array that contains every word from the string,
# to which you have appended a space and the word length.

# Mental model of the problem (optional):
# def word_lengths(string)
# [every word from the string to which you have appended a space and the word length]
# end

# Examples / Test Cases, Validate understanding of the problem:
# p word_lengths('cow sheep chicken') == ['cow 3', 'sheep 5', 'chicken 7']

# p word_lengths('baseball hot dogs and apple pie') ==
# ['baseball 8', 'hot 3', 'dogs 4', 'and 3', 'apple 5', 'pie 3']

# p word_lengths('It ain\'t easy, is it?') == ['It 2', 'ain\'t 5', 'easy, 5', 'is 2', 'it? 3']

# p word_lengths('Supercalifragilisticexpialidocious') ==
# ['Supercalifragilisticexpialidocious 34']

# p word_lengths('') == []

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the word_lengths method accepts the string parameter and is defined as the following:
# the string parameter is split into an array of substrings which has the following
# block of code passed to each element:
# return the string with string interpolation containing the word block parameter and the
# number of letters in the word block parameter.

# and Code. Implementation of Algorithm:
# def word_lengths(string)
#   string.split.map do |word|
#     "#{word} #{word.length}"
#   end
# end

# LS Solution:
def word_lengths(string)
  words = string.split

  words.map do |word|
    word + ' ' + word.length.to_s
  end
end

# tests:
p word_lengths('cow sheep chicken') == ['cow 3', 'sheep 5', 'chicken 7']

p word_lengths('baseball hot dogs and apple pie') ==
  ['baseball 8', 'hot 3', 'dogs 4', 'and 3', 'apple 5', 'pie 3']

p word_lengths('It ain\'t easy, is it?') == ['It 2', 'ain\'t 5', 'easy, 5', 'is 2', 'it? 3']

p word_lengths('Supercalifragilisticexpialidocious') ==
  ['Supercalifragilisticexpialidocious 34']

p word_lengths('') == []

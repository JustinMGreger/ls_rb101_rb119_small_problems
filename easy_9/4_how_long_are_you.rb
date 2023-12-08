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

Make the requirements explicit Identify rules:
Mental model of the problem (optional):

# Examples / Test Cases, Validate understanding of the problem:
# p word_lengths('cow sheep chicken') == ['cow 3', 'sheep 5', 'chicken 7']

# p word_lengths('baseball hot dogs and apple pie') ==
# ['baseball 8', 'hot 3', 'dogs 4', 'and 3', 'apple 5', 'pie 3']

# p word_lengths('It ain\'t easy, is it?') == ['It 2', 'ain\'t 5', 'easy, 5', 'is 2', 'it? 3']

# p word_lengths('Supercalifragilisticexpialidocious') ==
# ['Supercalifragilisticexpialidocious 34']

# p word_lengths('') == []

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code. Implementation of Algorithm:

# tests:
p word_lengths('cow sheep chicken') == ['cow 3', 'sheep 5', 'chicken 7']

p word_lengths('baseball hot dogs and apple pie') ==
  ['baseball 8', 'hot 3', 'dogs 4', 'and 3', 'apple 5', 'pie 3']

p word_lengths('It ain\'t easy, is it?') == ['It 2', 'ain\'t 5', 'easy, 5', 'is 2', 'it? 3']

p word_lengths('Supercalifragilisticexpialidocious') ==
  ['Supercalifragilisticexpialidocious 34']

p word_lengths('') == []

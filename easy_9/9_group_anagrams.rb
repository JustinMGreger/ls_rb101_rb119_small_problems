# frozen_string_literal: true

# Given the array...
# words = %w[demo none tied evil dome mode live fowl veil wolf diet vile edit tide flow neon]

# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a different order.
# Your output should look something like this:
# %w[demo dome mode]
# %w[neon none]
# (etc)

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# words = %w[demo none tied evil dome mode live fowl veil wolf diet vile edit tide flow neon]

# output:
# groups of words that are anagrams.

# Make the requirements explicit Identify rules:
# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a different order.

# Mental model of the problem (optional):
# words = %w[demo none tied evil dome mode live fowl veil wolf diet vile edit tide flow neon]
# def anagrams(words)
# extract words from the words parameter.
# a new array is created for each of the words.
# the words are then broken into letters.
# create all combinations of the letters that are words.
# print out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a different order.

# Examples / Test Cases, Validate understanding of the problem:
# p anagrams(words) ==
# %w[demo dome mode]
# %w[neon none]
# (etc)

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the anagrams method accepts the words parameter and is defined as the following:
# the anagram_groups is assigned to the {} hash.
# pass the following block of code to each element in the words parameter:
# the key varible is assigned the expected_result of breaking the word block parameter into
# an array of letters which is then sorted into alphabetic order then joined into a single string.
# if the value assigned to the key varible in the anagram_groups is undefined then assign it the [] array.

words = %w[demo none tied evil dome mode live fowl veil wolf diet vile edit tide flow neon]
def anagrams(words)
extract words from the words parameter.
a new array is created for each of the words.
the words are then broken into letters.
# determine which words in the words varible contain the same letters.
print out groups of words that are anagrams.
Anagrams are words that have the same exact letters in them but in a different order.

and Code. Implementation of Algorithm:

# test:
# p anagrams(words) ==
# %w[demo dome mode]
# %w[neon none]
# (etc)

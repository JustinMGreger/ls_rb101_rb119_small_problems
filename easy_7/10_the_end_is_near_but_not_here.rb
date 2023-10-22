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

# Make the requirements explicit Identify rules:
# exeception handling for edge cases: strings containing just 1 word, empty strings, even number strings.
# return the middle word in the string_parameter.

# Mental model of the problem (optional):
# the middle method accepts the string_parameter and is defined as the following:
# break the string_parameter into an array of string elements.
# check if the array is empty and handle that by printing nil.
# check if array is 1 string in total return the string.
# check if the array is odd if odd then return the middle string.
# check if the array is even if even then handle that by returning the 2 middle numbers.

# Examples / Test Cases, Validate understanding of the problem:
# p middle('apple orange banana') == 'orange'

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the middle method accepts the string_parameter and is defined as the following:
# break the string_parameter into an array of string elements and assign this to the words variable.
# case expression that follows the number of elements in the words variable.
# if the array is empty then nil.
# if array is 1 string in total return the string.
# if the array contains 2 strings then return both strings.
# the middle_index variable is assigned to the number of elements in the words variable divided by 2.
# if the array is odd if odd then return the middle_index variable.
# check if the array is even if even then handle that by return the value located at the middle_index variable - 1 index
# location of the words variable and the middle_index variable index locaiton of the words variable.

# and Code.” Implementation of Algorithm:
def middle(string_parameter)
  words = string_parameter.split
  case words.length
  when 0 then nil
  when 1 then words[0]
  when 2 strings then [words[0], words[1]]
  else
    middle_index = words.length / 2
if the array is odd if odd then return the middle_index variable.
check if the array is even if even then handle that by return the value located at the middle_index variable - 1 index
location of the words variable and the middle_index variable index locaiton of the words variable.





# tests: 
p middle('apple orange banana') == 'orange'

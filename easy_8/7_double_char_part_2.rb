# frozen_string_literal: true

# Write a method that takes a string,
# and returns a new string in which every consonant character is doubled.
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Examples:
# p double_consonants('String') == 'SSttrrinngg'
# p double_consonants('Hello-World!') == 'HHellllo-WWorrlldd!'
# p double_consonants('July 4th') == 'JJullyy 4tthh'
# p double_consonants('') == ''

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a string

# output:
# a new string in which every consonant character is doubled.

# Make the requirements explicit Identify rules:
# Write a method that takes a string.
# return a new string in which every consonant character is doubled.
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Mental model of the problem (optional):
# def double_consonants(string)
# determine if the string parameter is a consonant.
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
# assign the result of doubling the consonants to the new_string varible.
# return the value assigned to the new string varible.

#Examples / Test Cases, Validate understanding of the problem:
# p double_consonants('String') == 'SSttrrinngg'
# p double_consonants('Hello-World!') == 'HHellllo-WWorrlldd!'
# p double_consonants('July 4th') == 'JJullyy 4tthh'
# p double_consonants('') == ''

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the double_consonants method accepts the (string) parameter and is defined as the following:
# the new_string varible is assigned to the [] array.
# pass the following block of code to each character in the string parameter.
# if the block parameter is a consonant then block parameter concatenated with the block parameter
# which is appended to the new_string.

Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
assign the result of doubling the consonants to the new_string varible.
return the value assigned to the new string varible.








and Code. Implementation of Algorithm:

# tests:
p double_consonants('String') == 'SSttrrinngg'
p double_consonants('Hello-World!') == 'HHellllo-WWorrlldd!'
p double_consonants('July 4th') == 'JJullyy 4tthh'
p double_consonants('') == ''

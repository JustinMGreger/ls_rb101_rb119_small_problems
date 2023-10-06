# frozen_string_literal: true

# Write a method that takes a String as an argument,
# and returns a new String that contains the original value
# using a staggered capitalization scheme in which every other character is capitalized,
# and the remaining characters are lowercase.
# Characters that are not letters should not be changed,
# but count as characters when switching between upper and lowercase.

# Example:
# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a String parameter.

# output:
# a new String that contains the original value using a staggered capitalization scheme
# in which every other character is capitalized,
# and the remaining characters are lowercase.
# Characters that are not letters should not be changed,
# but count as characters when switching between upper and lowercase.

# Make the requirements explicit Identify rules:
# 1. Write a method that takes a String as an argument.
# 2. return a new String.
# 3. the new string contains the original value.
# 4. every other character is capitalized and the remaining characters are lowercase.
# 5. Characters that are not letters should not be changed.
# 6.  Characters that are not letters count as characters when switching between upper and lowercase.

# Mental model of the problem (optional):
# staggered_case(string_parameter)
# return new_string
3. the new string contains the original value.
4. every other character is capitalized and the remaining characters are lowercase.
5. Characters that are not letters should not be changed.
6.  Characters that are not letters count as characters when switching between upper and lowercase.








# Examples / Test Cases, Validate understanding of the problem:
# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:

# tests:
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

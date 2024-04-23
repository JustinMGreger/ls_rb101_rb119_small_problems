# frozen_string_literal: true

# In the easy exercises,
# we worked on a problem where we had to count the number of uppercase and lowercase characters,
# as well as characters that were neither of those two.
# Now we want to go one step further.

# Write a method that takes a string,
# and then returns a hash that contains 3 entries:
# one represents the percentage of characters in the string that are lowercase letters,
# one the percentage of characters that are uppercase letters,
# and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Examples:
# p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a string that will always contain at least one character.

# output:
# a hash that contains 3 entries:
# one represents the percentage of characters in the string that are lowercase letters,
# one the percentage of characters that are uppercase letters,
# and one the percentage of characters that are neither.

# Make the requirements explicit Identify rules:
# Write a method that takes a string,
# and then returns a hash that contains 3 entries:
# one represents the percentage of characters in the string that are lowercase letters,
# one the percentage of characters that are uppercase letters,
# and one the percentage of characters that are neither.
# You may assume that the string will always contain at least one character.

# Mental model of the problem (optional):
# def letter_percentages(string)
# and then returns a hash that contains 3 entries:
# one represents the percentage of characters in the string that are lowercase letters,
# one the percentage of characters that are uppercase letters,
# and one the percentage of characters that are neither.
# You may assume that the string will always contain at least one character.

# Examples / Test Cases, Validate understanding of the problem:
# p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code. Implementation of Algorithm:

# Tests:
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

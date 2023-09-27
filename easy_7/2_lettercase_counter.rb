# frozen_string_literal: true

# Write a method that takes a string
# and then returns a hash that contains 3 entries:
# one represents the number of characters in the string that are lowercase letters,
# one represents the number of characters that are uppercase letters,
# and one represents the number of characters that are neither.

# Examples
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a string.

# output:
a hash that contains 3 entries: the number of lowercase letter characters,



one represents the number of characters that are uppercase letters,
and one represents the number of characters that are neither.

Make the requirements explicit Identify rules:
Mental model of the problem (optional):
Examples / Test Cases, Validate understanding of the problem:
Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:

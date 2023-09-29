# frozen_string_literal: true

# Write a method that takes a string
# and then returns a hash that contains 3 entries:
# one represents the number of characters in the string that are lowercase letters,
# one represents the number of characters that are uppercase letters,
# and one represents the number of characters that are neither.

# Examples
# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a string.

# output:
# a hash that contains 3 entries: the number of lowercase letter characters, the number of uppercase letter characters,
# and the number of characters that are neither.

# Make the requirements explicit Identify rules:
# write a method that takes a string and returns a hash that contains 3 entries:
# the number of lowercase letter characters, the number of uppercase letter characters,
# and the number of characters that are neither.

# Mental model of the problem (optional):
# the letter_case_count method accepts the string_parameter.
# the letter_case_count method returns the hash containing the lowercase: key symbol that is assigned to the
# number of lowercase letter characters value, the uppercase: key symbol that is assigned to the number of
# uppercase letter characters value, and the neither: key symbol that is assigned to the number of characters
# that are neither value.

# Examples / Test Cases, Validate understanding of the problem:
# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Data Structure, How we represent data that we will work with when converting the input to output:
# hash.

# Algorithm, Steps for converting input to output:
# the letter_case_count method accepts the string_parameter.
# the letter_case_count method counts how many characters in the string_parameter are lowercase alphabetic
# and assigns this number as the lowercase letter characters value to the the lowercase: key symbol, assigns
# the number of characters that are uppercase alphabetic as the uppercase letter characters value to the
# uppercase: key symbol, and assigns the number of characters that are not alphabetic as not alphabetic value
# to the not alphabetic key symbol.
# the letter_case_count method returns the hash containing the lowercase: key symbol that is assigned to the
# number of lowercase letter characters value, the uppercase: key symbol that is assigned to the number of
# uppercase letter characters value, and the neither: key symbol that is assigned to the number of characters
# that are neither value.

# and Code.” Implementation of Algorithm:
def letter_case_count(string_parameter)
  hash = {}
  lowercase_value = string_parameter.scan(/[a-z]/).length
  hash[:lowercase] = lowercase_value
  uppercase_value = string_parameter.scan(/[A-Z]/).length
  hash[:uppercase] = uppercase_value
  neither_value = string_parameter.scan(/[^a-zA-Z]/).length
  hash[:neither] = neither_value
  hash
end

# tests:
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

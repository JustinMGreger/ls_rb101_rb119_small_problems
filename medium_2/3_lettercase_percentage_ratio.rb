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
# the percentage of characters in the string that are lowercase letters are assigned to the lowercase: symbol.
# the percentage of characters that are uppercase letters are assigned to the uppercase: symbol.
# the percentage of characters that are neither are assigned to the neither: symbol.
# You may assume that the string will always contain at least one character.
# { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }

# Examples / Test Cases, Validate understanding of the problem:
# p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# Data Structure, How we represent data that we will work with when converting the input to output:
# a hash.

# Algorithm, Steps for converting input to output:
# the letter_percentages method accepts the (string) parameter and is defined as the following:
# the total variable is assigned the result of returning the number of characters in the string parameter
# that is in float form.
# return the hash that contains: the { symbol which opens the hash followed by the lowercase: symbol
# which is assigned the result of passing the parameter that is the result of counting all characters in
# the string parameter that are lowercase letters from 'a' to 'z', and the total parameter to the
# calculate_percentage method key value, followed by the uppercase: symbol which is assigned the result
# of passing the parameter that is the result of counting all characters in the string parameter that are
# uppercase letters from 'A' to 'Z', and the total parameter to the calculate_percentage method key value,
# followed by the neither: symbol which is assigned the result of passing the parameter that is the result of 
# counting all characters in the string parameter that are not 'A' to 'Z' and 'a' to 'z', and the total parameter
# to the calculate_percentage method key value followed by the } character which closes the hash.
# this is the last line of the letter_percentages method.




# and Code. Implementation of Algorithm:

# Tests:
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

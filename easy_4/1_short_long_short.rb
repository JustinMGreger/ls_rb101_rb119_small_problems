# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the 
# result of concatenating the shorter string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# Tests:
# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem, 

# Identify expected input: 
# two strings

# and output:
# returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 

# Make the requirements explicit Identify rules:
# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the 
# result of concatenating the shorter string, the longer string, and the shorter string once again. 

# Mental model of the problem (optional):
# input 2 strings passed to the short_long_short method.
# determine the longest of the two strings.
# return result = "the shorter_string" + "the longer_string" + "the shorter_string" 

# Examples / Test Cases, Validate understanding of the problem:
# Tests:
# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

# Data Structure, How we represent data that we will work with when converting the input to output:
# strings & possibly arrays.

# Algorithm, Steps for converting input to output:
# 1. the short_long_short method accepts 2 string arguments.
# 2. the short_long_short method determines the longest & shortest of the two strings.
# 3. that information is stored in variables.
# 4. organize the variables so that "the shorter_string", "the longer_string", "the shorter_string".
# 5. concatenate these variables into 1 string.
# 6. assign this to a variable.
return result = "the shorter_string" + "the longer_string" + "the shorter_string" 


# and Code.” Implementation of Algorithm:

# frozen_string_literal: true

# Swap Case

# Write a method that takes a string as an argument
# and returns a new string in which every uppercase letter is replaced by its lowercase version,
# and every lowercase letter by its uppercase version.
# All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Example:
# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a string.

# output:
# a new string in which every uppercase letter is replaced by its lowercase version,
# and every lowercase letter by its uppercase version.
# All other characters should be unchanged.

# Make the requirements explicit Identify rules:
# 1. Write a method that takes a string as an argument.
# 2. return a new string in which every uppercase letter is replaced by its lowercase version
# and every lowercase letter by its uppercase version.
# 3. All other characters should be unchanged.
# 4. You may not use String#swapcase; write your own version of this method.

# Mental model of the problem (optional):
# write your own version of String#swapcase method.
# swapcase(string)
# return a new string in which /[A-Z]/ is replaced by /[a-z]/
# /[a-z]/ is replaced by /[A-Z]/
# /[^A-Za-z]/ should be unchanged.

# Examples / Test Cases, Validate understanding of the problem:
# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the swapcase method accepts the (string_parameter) parameter and is defined as the following:
# in the string_parameter /[A-Z]/ is replaced by /[a-z]/
# in the string_parameter /[a-z]/ is replaced by /[A-Z]/
# the result of the modified string_parameter is assigned to the new_string variable which is returned.

# and Code.” Implementation of Algorithm:
# def swapcase(string_parameter)
#   string_parameter.gsub(/[A-Za-z]/) do |match|
#     match =~ /[A-Z]/ ? match.downcase : match.upcase
#   end
# end

# LS Solution:
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

# test:
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

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
# new_string contains the original value of string_parameter.
# every other /[A-Za-z]/ character is .capitalize and the remaining characters are lowercase.
# Characters that are /[^A-Za-z]/ count as characters when switching between upper and lowercase.

# Examples / Test Cases, Validate understanding of the problem:
# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the staggered_case method accepts the (string_parameter) and is defined as the following:
# sort through each character in the string_parameter
# if every other character is a /[A-Za-z]/ character then replace with a /[A-Z]/ character.
# combine this into a new_string varible.
# return new_string

# and Code.” Implementation of Algorithm:
# def staggered_case(string_parameter)
#   new_string = []

#   string_parameter.chars.each_with_index do |char, index|
#     new_char = index.even? ? char.upcase : char.downcase
#     new_string.push(new_char)
#   end

#   new_string.join
# end

# LS Solution:
# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

# Further Exploration

# Can you modify this method so the caller can request that the first character be downcased rather than upcased?
# If the first character is downcased, then the second character should be upcased, and so on.

# Hint: Use a keyword argument.

# Modified LS Solution:
# frozen_string_literal: true

def staggered_case(string, start_upper: true)
  need_upper = start_upper
  string.chars.map do |char|
    char_to_add = need_upper ? char.upcase : char.downcase
    need_upper = !need_upper
    char_to_add
  end.join
end

# tests:
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# frozen_string_literal: true

# Write a method that takes one argument,
# a string containing one or more words,
# and returns the given string with words that contain five or more characters reversed.
# Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# Examples:
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a string argument containing one or more words.

# output:
# the given string with words that contain five or more characters reversed.

# Make the requirements explicit Identify rules:
# Write a method that takes one argument.
# the argument is a string containing one or more words.
# return the given string with words that contain five or more characters reversed.
# Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# Mental model of the problem (optional):
# def reverse_words(string)
# break the string into substrings.
# if substrings are > 5 characters then reverse the substrings.
# combine substrings into a single string.
# return the single string.

# Examples / Test Cases, Validate understanding of the problem:
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the reverse_words method accepts the (string) parameter and is defined as the following:
# the words varible is assigned to the result of splitting the string parameter into an array of substrings
# and then passing the following block of code to each element:
# if the word block parameter has a number of characters greater than 5 then reverse the word block parameter
# and if it does not then return the word block parameter.
# return the result of joining the words varible into a single string.

# and Code. Implementation of Algorithm:
# def reverse_words(string)
#   words = string.split.map do |word|
#     word.length > 5 ? word.reverse : word
#   end
#   words.join(' ')
# end

# LS Solution:
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

# tests:
puts reverse_words('Professional') == 'lanoisseforP' # => lanoisseforP
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb' # => Walk dnuora the kcolb
puts reverse_words('Launch School') == 'hcnuaL loohcS' # => hcnuaL loohcS

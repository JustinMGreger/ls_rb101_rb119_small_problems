# frozen_string_literal: true

# Write a method that takes a sentence string as input,
# and returns the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Example:
# word_to_digit('Please call me at five five five one two three four. Thanks.') ==
# 'Please call me at 5 5 5 1 2 3 4. Thanks.'
# Hint 1: The String#gsub! method may prove useful in this problem.
# Hint 2: String#gsub! requires a "pattern" argument, which is typically expressed as a regular expression (regex).
# Regular expressions (regex) are very useful for string operations, but we don't cover them in any detail until RB130.
# If you haven't already read our book, Introduction to Regular Expressions, you may do so now,
# but it isn't necessary - this hint provides the only regular expression you need for this problem:
# if you have a variable named foo that contains some sort of word and want to match that word in a longer string,
# you can use the regex /\b#{foo}\b/.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a sentence string.

# output:
# a string of digits.

# Make the requirements explicit Identify rules:
# Write a method that takes a sentence string as input,
# and returns the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Mental model of the problem (optional):
# def word_to_digit(sentence_string)
# and returns the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Examples / Test Cases, Validate understanding of the problem:
# p word_to_digit('Please call me at five five five one two three four. Thanks.') ==
# 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Data Structure, How we represent data that we will work with when converting the input to output:
# Hash.

# Algorithm, Steps for converting input to output:
# freeze all string literals present in the file this makes it immutable, meaning it cannot be modified
# in any way once it is initialized.
# the word_to_digit method accepts the (sentence) parameter and is defined as the following:
# the number_words_to_digits variable is assigned to the hash which contains:
# the 'zero' string key assigned the '0' string value ,
# followed by the 'one' string key assigned the '1' string value,
# followed by the 'two' string key is assigned the '2' string value,
# followed by the 'three' string key is assigned the '3' string value,
# followed by the 'four' string key is assigned the '4' string value,
# followed by the 'five' string key is assigned the  '5' string value,
# followed by the 'six' string key is assigned the '6' string value,
# followed by the 'seven' string key is assigned the '7' string value,
# followed by the 'eight' string key is assigned the '8' string value,
# followed by the 'nine' string key is assigned the '9' string value
# which closes the hash.
# the modified_sentence variable is assigned the sentence parameter.
# pass the following block of code to each element in the number_words_to_digits variable
# the modified_sentence variable is assigned the result of globally substituting the
# modified_sentence variable by the (/\b#{word}\b/, digit) which contains the
# #{word} string interpolation which contains the word block parameter which is the string
# key that is assigned the digit block parameter which is the string value.
# this is the last line of the .each method.
# return the value assigned to the modified_sentence variable.
# this is the last line of the word_to_digit method.

# and Code. Implementation of Algorithm:
# def word_to_digit(sentence)
#   number_words_to_digits = {
#     'zero' => '0',
#     'one' => '1',
#     'two' => '2',
#     'three' => '3',
#     'four' => '4',
#     'five' => '5',
#     'six' => '6',
#     'seven' => '7',
#     'eight' => '8',
#     'nine' => '9'
#   }

#   modified_sentence = sentence
#   number_words_to_digits.each do |word, digit|
#     modified_sentence = modified_sentence.gsub(/\b#{word}\b/, digit)
#   end

#   modified_sentence
# end

# LS Solution:
# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end

# test:
# p word_to_digit('Please call me at five five five one two three four. Thanks.') ==
# 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Further Exploration

# There are many ways to solve this problem and different varieties of it.

# Suppose, for instance, that we also want to replace uppercase and capitalized words.
# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(sentence)
#   modified_sentence = sentence.dup # Create a modifiable copy of the sentence
#   DIGIT_HASH.each do |word, digit|
#     modified_sentence.gsub!(/\b#{word}\b/i) { |match| match_case(match, digit) }
#   end
#   modified_sentence
# end

# def match_case(match, digit)
#   case match
#   when match.upcase then digit.upcase
#   when match.capitalize then digit
#   else digit.downcase
#   end
# end

# Test cases
# puts word_to_digit('Please call me at five five five one two three four. Thanks.') ==
#      'Please call me at 5 5 5 1 2 3 4. Thanks.'
# puts word_to_digit('Please call me at FIVE FIVE FIVE ONE TWO THREE FOUR. Thanks.') ==
#      'Please call me at 5 5 5 1 2 3 4. Thanks.'
# puts word_to_digit('Please call me at Five Five Five One Two Three Four. Thanks.') ==
#      'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Further Exploration
# Can you change your solution so that the spaces between consecutive numbers are removed?
# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(sentence)
#   modified_sentence = sentence.dup # Create a modifiable copy of the sentence
#   DIGIT_HASH.each do |word, digit|
#     modified_sentence.gsub!(/\b#{word}\b/i) { |match| match_case(match, digit) }
#   end
#  # Remove spaces between digits
#   modified_sentence.gsub!(/(?<=\d)\s+(?=\d)/, '')
#   modified_sentence
# end

# def match_case(match, digit)
#   case match
#   when match.upcase then digit.upcase
#   when match.capitalize then digit
#   else digit.downcase
#   end
# end

# Test cases
# puts word_to_digit('Please call me at five five five one two three four. Thanks.') ==
#      'Please call me at 5551234. Thanks.'
# puts word_to_digit('Please call me at FIVE FIVE FIVE ONE TWO THREE FOUR. Thanks.') ==
#      'Please call me at 5551234. Thanks.'
# puts word_to_digit('Please call me at Five Five Five One Two Three Four. Thanks.') ==
#      'Please call me at 5551234. Thanks.'

# Further Exploration
# Suppose the string already contains two or more space separated numbers (not words);
# can you leave those spaces alone, while removing any spaces between numbers that you
# create?
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(sentence)
  modified_sentence = sentence.dup

  DIGIT_HASH.each do |word, digit|
    modified_sentence.gsub!(/\b#{word}\b/i) { "|#{digit}|" }
  end

  modified_sentence.gsub!(/\|\s+\|/, '||')
  modified_sentence.gsub!(/\|(\d)\|/, '\1')

  modified_sentence
end

# tests:
puts word_to_digit('Please call me at five five five one two three four. Thanks.') == \
     'Please call me at 5551234. Thanks.'
puts word_to_digit('My number is four one five two three. Please call.') == 'My number is 41523. Please call.'
puts word_to_digit('Call me on 123 456 or at seven eight nine.') == 'Call me on 123 456 or at 789.'
puts word_to_digit('Please dial nine one one for emergency. Call five five five one two ' \
                   'three four for non-emergencies. Dial 9 1 1 for direct emergencies.') == \
     'Please dial 911 for emergency. Call 5551234 for non-emergencies. Dial 9 1 1 for direct emergencies.'

# Further Exploration
# What about dealing with phone numbers?
# Is there any easy way to format the result to account for phone numbers?
# For our purposes, assume that any 10 digit number is a phone number,
# and that the proper format should be "(123) 456-7890".
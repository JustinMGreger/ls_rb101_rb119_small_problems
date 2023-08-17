# frozen_string_literal: true

# Given a string of words separated by spaces,
# write a method that takes this string of words and returns a string in which the first and last letters of
# every word are swapped.

# You may assume that every word contains at least one letter,
# and that the string will always contain at least one word.
# You may also assume that each string contains nothing but words and spaces.

# my answer:

# def swap(swap_string)
#   swap_string.split.map do |word|
#     if word.length > 1
#       word[-1] + word[1..-2] + word[0]
#     else
#       word
#     end
#   end.join(' ')
# end

# Examples / Test Cases, Validate understanding of the problem:
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

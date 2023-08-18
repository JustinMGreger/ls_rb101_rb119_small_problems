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

# LS answer:
# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

# Further Exploration
# How come our solution passes word into the swap_first_last_characters method invocation instead of just passing
# the characters that needed to be swapped?
# Suppose we had this implementation:
def swap_first_last_characters(a, b)
  a, b = b, a
end

# and called the method like this:
swap_first_last_characters(word[0], word[-1])

# Examples / Test Cases, Validate understanding of the problem:
# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'

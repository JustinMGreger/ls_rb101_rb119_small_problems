# frozen_string_literal: true
# Given a string of words separated by spaces,
# write a method that takes this string of words and returns a string in which the first and last letters of
# every word are swapped.

# You may assume that every word contains at least one letter,
# and that the string will always contain at least one word.
# You may also assume that each string contains nothing but words and spaces.

# my answer:

def swap (a string that will always contain nothing but at least one word where every word contains at least one letter
and each word is separated by spaces)
  returns a string in which the first and last letters of every word are swapped.
end

the swap method accepts a string.
assigned the result of: swapping the first and last letters of every word
return this swapped string.

# Examples / Test Cases, Validate understanding of the problem:
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

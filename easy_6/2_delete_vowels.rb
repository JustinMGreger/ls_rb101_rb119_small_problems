# frozen_string_literal: true

# Write a method that takes an array of strings,
# and returns an array of the same string values,
# except with the vowels (a, e, i, o, u) removed.

# LS solution:
def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

# Further Exploration

# Ruby has all sorts of String methods that could accomplish this task. 
# How did you end up solving this exercise?

# Answer:
# my solution:
# def remove_vowels(string_array)
#   string_array.map { |str| str.gsub(/[aeiouAEIOU]/, '') }
# end

# tests:
p remove_vowels(%w[abcdefghijklmnopqrstuvwxyz]) == %w[bcdfghjklmnpqrstvwxyz]
p remove_vowels(%w[green YELLOW black white]) == %w[grn YLLW blck wht]
p remove_vowels(%w[ABC AEIOU XYZ]) == ['BC', '', 'XYZ']

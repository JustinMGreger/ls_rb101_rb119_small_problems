# frozen_string_literal: true

# Write a method that takes an array of strings,
# and returns an array of the same string values,
# except with the vowels (a, e, i, o, u) removed.

Mental model of the problem (optional):
def remove_vowels((string_array))
2. Remove the vowels (a, e, i, o, u).
3. Return an array of the modified string values.



Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:

# tests:
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

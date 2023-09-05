# frozen_string_literal: true

# Write a method that takes an array of strings,
# and returns an array of the same string values,
# except with the vowels (a, e, i, o, u) removed.

# my solution:
def remove_vowels((string_array))
  new_array = Remove the vowels (a, e, i, o, u)
  Return an array of the modified string values.
end

  the new_array variable is assigned the result of removing the (a, e, i, o, u) vowels from the string_array parameter
  which is converted to array form.




# tests:
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

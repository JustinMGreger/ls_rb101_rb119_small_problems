# frozen_string_literal: true

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Algorithm, Steps for converting input to output:


and Code.” Implementation of Algorithm:
the digit_list method accepts the positive_integer
the digit_list splits the positive_integer into an array of elements.
the elements are turned into integer
the array is returned

def digit_list(positive_integer)
  and returns a list of the digits in the number.
end


# tests:
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

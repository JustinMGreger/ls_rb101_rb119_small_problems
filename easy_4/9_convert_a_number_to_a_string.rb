# frozen_string_literal: true

# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers.
# In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc.
# Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# Examples:
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# my solution:
# def integer_to_string(number)
#   lookup = '0123456789'
#   return lookup[0] if number.zero?

#   result = ''

#   while number.positive?
#     digit = number % 10
#     number /= 10
#     result = lookup[digit] + result
#   end

#   result
# end

# LS solution modified for rubocop:
# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'].freeze

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number.zero?
#   end
#   result
# end

# tests:
puts integer_to_string(4321) # Should print '4321'
puts integer_to_string(0) # Should print '0'
puts integer_to_string(5000) # Should print '5000'

# Further Exploration

# One thing to note here is the String#prepend method; unlike most string mutating methods,
# the name of this method does not end with a !.
# However, it is still a mutating method - it changes the string in place.

# This is actually pretty common with mutating methods that do not have a corresponding
# non-mutating form.
# chomp! ends with a ! because the non-mutating chomp is also defined. prepend does not
# end with a ! because there is no non-mutating form of prepend.

# How many mutating String methods can you find that do not end with a !.
# concat
# replace
# prepend
# insert
# clear
# force_encoding
# setbyte

# Can you find any that end with a !, but don't have a non-mutating form?
# string.delete

# Does the Array class have any methods that fit this pattern?
# No.

# How about the Hash class?
# No.

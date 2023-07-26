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

# tests:
puts integer_to_string(4321) # Should print '4321'
puts integer_to_string(0) # Should print '0'
puts integer_to_string(5000) # Should print '5000'

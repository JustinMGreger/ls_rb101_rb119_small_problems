# frozen_string_literal: true

# In the previous exercise, you developed a method that converts non-negative numbers to strings.
# In this exercise, you're going to extend that method by adding the ability to represent negative
# numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s,
# String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

# Examples:
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# LS solution modified to comply with rubocop:
# DIGITS = %w[0 1 2 3 4 5 6 7 8 9].freeze

# def integer_to_string(number)
#   result = String.new
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number.zero?
#   end
#   result
# end

# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end

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

# def signed_integer_to_string(number)
#   if number.positive?
#     "+#{integer_to_string(number)}"
#   elsif number.negative?
#     "-#{integer_to_string(-number)}"
#   else
#     integer_to_string(number)
#   end
# end

# Further Exploration

# Refactor our solution to reduce the 3 integer_to_string calls to just one.

# LS solution refactored:
# DIGITS = %w[0 1 2 3 4 5 6 7 8 9].freeze

# def integer_to_string(number)
#   result = String.new
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number.zero?
#   end
#   result
# end

# def signed_integer_to_string(number)
#   sign =  case number <=> 0
#           when -1 then '-'
#           when +1 then '+'
#           else         ''
#           end
#   sign + integer_to_string(number.abs)
# end

# my solution refactored:
def integer_to_string(number)
  lookup = '0123456789'
  return lookup[0] if number.zero?

  result = ''

  while number.positive?
    digit = number % 10
    number /= 10
    result = lookup[digit] + result
  end

  result
end

def signed_integer_to_string(number)
  str_num =
    if number.positive?
      '+'
    elsif number.negative?
      '-'
    else
      ''
    end
  str_num + integer_to_string(number.abs)
end

# tests:
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

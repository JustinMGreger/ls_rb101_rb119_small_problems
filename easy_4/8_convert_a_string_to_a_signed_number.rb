# frozen_string_literal: true

# In the previous exercise, you developed a method that converts simple numeric strings to Integers.
# In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# The String may have a leading + or - sign; if the first character is a +, your method should
# return a positive number; if it is a -, your method should return a negative number.
# If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i,
# Integer(), etc.
# You may, however, use the string_to_integer method from the previous lesson.

# Examples
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# my solution:
# def string_to_integer(string)
#   digits = {
#     '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#     '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
#   }

#   integer = 0
#   string.each_char do |char|
#     digit = digits[char]
#     next if digit.nil?
#     integer = 10 * integer + digit
#   end
#   integer
# end

# def string_to_signed_integer(string)
#   is_negative = string.start_with?('-')
#   string = string[1..-1] if is_negative
#   result = string_to_integer(string)
#   if is_negative
#     result * -1
#   else
#     result
#   end
# end

# LS solution:
# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# Further Exploration

# In our solution, we call string[1..-1] twice, and call string_to_integer three times.
# This is somewhat repetitive.
# Refactor our solution so it only makes these two calls once each.

# LS solution refactored:
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}.freeze

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  sign = 1
  if string.start_with?('-')
    sign = -1
    string = string[1..]
  elsif string.start_with?('+')
    string = string[1..]
  end

  string_to_integer(string) * sign
end

# tests:
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

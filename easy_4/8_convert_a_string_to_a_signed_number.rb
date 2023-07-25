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

if '-' integer * -1
else return number



def string_to_integer(string)
  digits = {
    "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
    "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9
  }

  integer = 0
  string.each_char do |char|
    integer = 10 * integer + digits[char]
  end
  integer
end
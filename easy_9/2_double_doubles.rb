# frozen_string_literal: true

# A double number is a number with an even number of digits whose left-side digits
# are exactly the same as its right-side digits.
# For example, 44, 3333, 103103, 7676 are all double numbers.
# 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned as-is.

# Examples:
# p twice(37) == 74
# p twice(44) == 44
# p twice(334_433) == 668_866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103_103) == 103_103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

# NOTE: underscores are used for clarity above.
# Ruby lets you use underscores when writing long numbers;
# however, it does not print the underscores when printing long numbers.
# Don't be alarmed if you don't see the underscores when running your tests.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a number argument.

# output:
# 2 times the number argument, unless the argument is a double number; double numbers should be returned as-is.

# Make the requirements explicit Identify rules:
# A double number is a number with an even number of digits whose left-side digits are exactly the same as
# its right-side digits.
# For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned as-is.

# Mental model of the problem (optional):
# def twice(number)
# double_number = number even number of digits && whose left-side digits are exactly the same as
# its right-side digits.
# if number == double_number return number.
# else return 2 x number

# Examples / Test Cases, Validate understanding of the problem:
# p twice(37) == 74
# p twice(44) == 44
# p twice(334_433) == 668_866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103_103) == 103_103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the double_number? method accepts the (number) parameter and is defined as the following:
# the num_str varible is assigned to the result of transforming the number parameter into string form.
# the len varible is assigned to the result of returning the number of characters in the num_str varible.
# return false if len is not even.
# the left_side varible is assigned to the result of returning the value located from the index location
# of the 0 integer to the result of dividing the len varible by the integer 2 in the num_str varible.
# the right_side varible is assigned the result of returning the value located from the index location of
# dividing the len varible by the integer 2 to the len varible in the num_str varible.
# return the boolean result of determining if the left_side varible is equal to the right_side varible.
# this is the last line of the double_number? method.
# the twice method accepts the number parameter and is defined as the following:
# if the result of passing the number parameter to the double_number? method returns true then return the
# number parameter.
# else return the result of multiplying the number variable by the integer 2.
# this is the last line of the twice method.

# and Code. Implementation of Algorithm:
def double_number?(number)
  num_str = number.to_s
  len = num_str.length

  return false unless len.even?

  left_side = num_str[0, len / 2]
  right_side = num_str[len / 2, len]

  left_side == right_side
end

def twice(number)
  if double_number?(number)
    number
  else
    2 * number
  end
end

# tests:
p twice(37) == 74
p twice(44) == 44
p twice(334_433) == 668_866
p twice(444) == 888
p twice(107) == 214
p twice(103_103) == 103_103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10

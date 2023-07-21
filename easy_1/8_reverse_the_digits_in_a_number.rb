# frozen_string_literal: true

# Write a method that takes a positive integer as an argument and returns that number
# with its digits reversed.

# Examples:
# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

# Don't worry about arguments with leading zeros - Ruby sees those as octal numbers,
# which will cause confusing results. For similar reasons, the return value for our fourth example
# doesn't have any leading zeros.

# LS solution:
# def reversed_number(number)
#   string = number.to_s
#   reversed_string = string.reverse
#   reversed_string.to_i
# end

def reversed_number(num)
  puts num.to_s.reverse.to_i
end

# Tests:
reversed_number(12_345) == 54_321
reversed_number(12_213) == 31_221
reversed_number(456) == 654
reversed_number(12_000) == 21 # No leading zeros in return value!
reversed_number(12_003) == 30_021
reversed_number(1) == 1

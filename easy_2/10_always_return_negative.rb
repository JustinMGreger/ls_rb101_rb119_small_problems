# frozen_string_literal: true

# Write a method that takes a number as an argument.
# If the argument is a positive number, return the negative of that number.
# If the number is 0 or negative, return the original number.

# Examples:

def negative(number)
  if number.positive?
    negative_number = number * -1
    puts negative_number
  else
    puts number
  end
end

negative(number)

# frozen_string_literal: true

# Write a method that takes a number as an argument.
# If the argument is a positive number, return the negative of that number.
# If the number is 0 or negative, return the original number.

# Examples:
# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby

# LS solution:
# def negative(number)
#   number > 0 ? -number : number
# end

# Further Exploration

# There is an even shorter way to write this but it isn't as immediately intuitive.

# LS Further Exploration solution:
# def negative(number)
#   -number.abs
# end


def negative(number)
  if number.positive?
    negative_number = number * -1
  else
    number
  end
end

# tests:
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
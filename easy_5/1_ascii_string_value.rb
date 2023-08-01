# frozen_string_literal: true

# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
# The ASCII string value is the sum of the ASCII values of every character in the string.
# (You may use String#ord to determine the ASCII value of a character.)

# my solution:
# def ascii_value(parameter)
#   result = []
#   parameter.each_char do |element|
#     result << element.ord
#   end
#   sum = result.sum
# end

# LS solution:
# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end

# Further Exploration:

# There is an Integer method such that:
# def mystery(char)
#   char.ord.mystery == char
# end
# where mystery is our mystery method.

# Can you determine what method name should be used in place of mystery?

# What happens if you try this with a longer string instead of a single character?

# tests:
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

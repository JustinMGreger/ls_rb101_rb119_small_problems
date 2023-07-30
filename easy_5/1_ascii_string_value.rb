# frozen_string_literal: true

# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
# The ASCII string value is the sum of the ASCII values of every character in the string.
# (You may use String#ord to determine the ASCII value of a character.)

def ascii_value(parameter)
until parameter.zero?
value of first character = parameter.ord
loop through the parameter string and extract the first character
break loop when parameter string is empty
  ascii_string_value = The is the sum of the ASCII values of every character in the string.
end

# tests:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

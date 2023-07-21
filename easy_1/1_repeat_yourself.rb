# frozen_string_literal: true

# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times
# as the integer indicates.

# Example:
# repeat('Hello', 3)
# Output:
# Hello
# Hello
# Hello

# LS solution:
def repeat(string, number)
  number.times do
    puts string
  end
end

def repeat(string, integer)
  integer.times do
    puts string
  end
end

# Test:
repeat('Hello', 3)

# the output of which is:
# Hello
# Hello
# Hello

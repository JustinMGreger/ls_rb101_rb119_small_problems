# frozen_string_literal: true

# The Fibonacci series is a sequence of numbers starting with 1 and 1
# where each number is the sum of the two previous numbers:
# the 3rd Fibonacci number is 1 + 1 = 2,
# the 4th is 1 + 2 = 3,
# the 5th is 2 + 3 = 5, and so on.
# In mathematical terms:
# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2
# Sequences like this translate naturally as "recursive" methods.
# A recursive method is one in which the method calls itself.
# For example:
# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end
# sum is a recursive method that computes the sum of all integers between 1 and n.
# Recursive methods have three primary qualities:

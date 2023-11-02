# frozen_string_literal: true

# Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring.

# Examples:
p leading_substrings('abc') == %w[a ab abc]
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

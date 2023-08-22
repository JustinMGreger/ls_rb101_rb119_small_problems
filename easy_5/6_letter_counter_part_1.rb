# frozen_string_literal: true

# Write a method that takes a string with one or more space separated words and returns a hash that shows the number
# of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

Identify expected input:
a string with one or more space separated words

and output:
return a hash that shows the number of words of different sizes.
Make the requirements explicit Identify rules:
Mental model of the problem (optional):
Examples / Test Cases, Validate understanding of the problem:
Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:
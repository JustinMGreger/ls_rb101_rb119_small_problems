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
a string with one or more space separated words which consist of any string of characters that do not include a space.

and output:
return a hash that shows the number of words of different sizes.

Make the requirements explicit Identify rules:
Words consist of any string of characters that do not include a space.
Write a method that takes a string with one or more space separated words
and returns a hash that shows the number of words of different sizes.

Mental model of the problem (optional):
Words = consist of any string of characters that do not include a space.
Write a method that takes a string with one or more space separated words
and returns a hash that shows the number of words of different sizes.
Hash is a data Structure of keys & values.
def word_sizes(string)
  key = word lengths
  value = how many words are that length
  hash = {key: value, key:value}
end

Examples / Test Cases, Validate understanding of the problem:
Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:
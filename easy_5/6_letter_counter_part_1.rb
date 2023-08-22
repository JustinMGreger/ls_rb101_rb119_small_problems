# frozen_string_literal: true

# Write a method that takes a string with one or more space separated words and returns a hash that shows the number
# of words of different sizes.

# Words consist of any string of characters that do not include a space.

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

# test:
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:
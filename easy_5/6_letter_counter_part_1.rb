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

# my solution:
Words = consist of any string of characters that do not include a space.
  1. the word_sizes method accepts the string parameter and is defined as the follow:
  2. extract from the string parameter the words.
  3. determine the length of the words and assign to symbol keys.
  4. determine how many words are of each length and assign the integer values to the appropriate symbol keys.
  5. assign the symbol key value pairs to a hash data structure.
  6. return this hash data structure.

# test:
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

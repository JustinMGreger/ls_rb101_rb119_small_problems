# frozen_string_literal: true

# Write a method that takes a string with one or more space separated words and returns a hash that shows the number
# of words of different sizes.

# Words consist of any string of characters that do not include a space.

Mental model of the problem (optional):
Words = consist of any string of characters that do not include a space.
Write a method that takes a string with one or more space separated words
and returns a hash that shows the number of words of different sizes.
Hash is a data Structure of keys & values.

# my solution:
WORDS = /\S+/

def word_sizes(string_parameter)
words_array = string_parameter.scan(WORDS)
key = words_array.group_by { |element| element.length }
value = key.map { |length, elements| [length, elements.size] }.to_h
end

  5. assign the symbol key value pairs to a hash data structure.
  6. return this hash data structure.

# test:
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

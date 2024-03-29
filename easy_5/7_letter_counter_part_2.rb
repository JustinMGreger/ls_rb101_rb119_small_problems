# frozen_string_literal: true

# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size.
# For instance, the length of "it's" is 3, not 4.

# my solution:

# WORDS = /\S+/.freeze

# def word_sizes(string_parameter)
#   words_array = string_parameter.scan(WORDS)
#   words_array.map! { |word| word.gsub(/[^a-zA-Z]/, '') }
#   word_length_count = words_array.group_by(&:length)
#   word_length_count.transform_values(&:size)
# end

# LS solution:
# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     clean_word = word.delete('^A-Za-z')
#     counts[clean_word.size] += 1
#   end
#   counts
# end

# Further Exploration

# If you haven't encountered String#delete before, take a few minutes to read up on it, and its companion String#count
# (you need to read about #count to get all of the information you need to understand #delete).

# tests:
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

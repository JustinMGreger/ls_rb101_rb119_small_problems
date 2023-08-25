# frozen_string_literal: true

# Write a method that takes an Array of Integers between 0 and 19,
# and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen,
# fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# my solution:
# def alphabetic_number_sort(numbers)
#   number_words = %w[
#     zero one two three four five six seven eight nine ten eleven twelve thirteen
#     fourteen fifteen sixteen seventeen eighteen nineteen
#   ]
#   numbers.sort_by { |num| number_words[num] }
# end

# LS solution:
# NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end

# Further Exploration

# Why do you think we didn't use Array#sort_by! instead of Enumerable#sort_by?
# my answer:
# a desire to not permanently modify the original array.

# For an extra challenge, rewrite your method to use Enumerable#sort (unless you already did so).
# my solution:
def alphabetic_number_sort(numbers)
  number_words = %w[
    zero one two three four five six seven eight nine ten eleven twelve thirteen
    fourteen fifteen sixteen seventeen eighteen nineteen
  ]

  numbers.sort { |a, b| number_words[a] <=> number_words[b] }
end

# tests:
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

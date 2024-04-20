# frozen_string_literal: true

# A collection of spelling blocks has two letters per block, as shown in this list:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that do
# not use both letters from any given block.
# Each letter in each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

# Examples:
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# word

# output:
# true or false

# Make the requirements explicit Identify rules:
# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.
# A collection of spelling blocks has two letters per block, as shown in this list:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do
# not use both letters from any given block.
# Each letter in each block can only be used once.

# Mental model of the problem (optional):
# def block_word?(word)
# compare word to blocks.
# A collection of spelling blocks has two letters per block, as shown in this list:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do
# not use both letters from any given block.
# Each letter in each block can only be used once.
# return true if the word can be spelled from this set of blocks.
# return false otherwise.

# Examples / Test Cases, Validate understanding of the problem:
# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the block_word? method accepts the (word) parameter and is defined as the following:
# the blocks varible is assigned to the %w[BO XK DQ CP NA GT RE FS JW HU VI LY ZM] array
# of single quote strings.
# pass the following block of code to each element in the blocks varible:
# the letter1, letter2 are assigned the result of splitting the block block parameter
# into an array of elements based on the '' character.
# if the result of counting the occurrence of the letter1 varible in
# the word parameter in upcase form is positive
# and the result of counting the occurrence of of the letter2 varible in
# the word parameter in upcase form is positive return false.
# this is the last line of the if statement.
# this is the last line of the .each method.
# return true.
# this is the last line of the block_word? method.

# and Code. Implementation of Algorithm:
def block_word?(word)
  blocks = %w[BO XK DQ CP NA GT RE FS JW HU VI LY ZM]

  blocks.each do |block|
    letter1, letter2 = block.split('')
    return false if word.upcase.count(letter1).positive? && word.upcase.count(letter2).positive?
  end

  true
end

# tests:
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

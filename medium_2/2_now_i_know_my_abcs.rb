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
# return true if the word can be spelled from this set of blocks.
# return false otherwise.
# A collection of spelling blocks has two letters per block, as shown in this list:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do
# not use both letters from any given block.
# Each letter in each block can only be used once.









# Examples / Test Cases, Validate understanding of the problem:
# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code. Implementation of Algorithm:

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

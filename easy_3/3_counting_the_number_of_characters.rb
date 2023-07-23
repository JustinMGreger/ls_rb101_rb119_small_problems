# frozen_string_literal: true

# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters.
# Spaces should not be counted as a character.

# input:
# Please write word or multiple words: walk

def prompt(message)
  puts message
end

prompt 'Please write word or multiple words:'
input = gets.chomp
character_count = input.gsub(' ', '').length
prompt "There are #{character_count} characters in \"#{input}\"."

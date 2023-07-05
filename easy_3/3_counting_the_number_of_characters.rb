# frozen_string_literal: true

def prompt(message)
  puts message
end

prompt 'Please write word or multiple words:'

input = gets.chomp

def word_or_words(input)
  if input.include?(' ')
    'words'
  else
    'word'
  end
end

character_count = input.gsub(' ', '').length

word_type = word_or_words(input)

prompt  "There are #{character_count} characters in \"#{input}\"."

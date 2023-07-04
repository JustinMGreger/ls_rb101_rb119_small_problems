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

character_count = input.gsub(" ", "").length

if word_or_words(input) ==  'word'
  prompt "There are #{character_count} characters in \"#{input}\"."
else
  prompt "There are #{character_count} characters in \"#{input}\"."
end

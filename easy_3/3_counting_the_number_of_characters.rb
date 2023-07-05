# frozen_string_literal: true

def prompt(message)
  puts message
end

prompt 'Please write word or multiple words:'

input = gets.chomp

character_count = input.gsub(' ', '').length

prompt "There are #{character_count} characters in \"#{input}\"."

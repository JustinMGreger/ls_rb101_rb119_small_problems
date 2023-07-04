# frozen_string_literal: true

def prompt(message)
  puts message
end

def input
  gets.chomp
end

input:
prompt 'Please write word or multiple words:'
input 

character_count = input determine number of characters and do not count spaces as a character.


  if input is word then prompt "There are #{character_count} characters in "#{word}"."
  else input is words then prompt "There are #{character_count} characters in "#{words}"."
  end
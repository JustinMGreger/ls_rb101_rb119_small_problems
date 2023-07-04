# frozen_string_literal: true

def prompt(message)
  puts message
end

def input
  gets.chomp
end

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. 
Spaces should not be counted as a character.

input:
prompt 'Please write word or multiple words:'
input 




  if input is word then prompt "There are #{character_count} characters in "#{word}"."
  else input is words then prompt "There are #{character_count} characters in "#{words}"."
  end
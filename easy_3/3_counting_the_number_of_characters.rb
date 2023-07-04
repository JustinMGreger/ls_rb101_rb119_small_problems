# frozen_string_literal: true

def prompt(message)
  puts message
end

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. 
Spaces should not be counted as a character.

input:
prompt 'Please write word or multiple words:'
walk
output:
prompt "There are 4 characters in "walk"."
input:
prompt 'Please write word or multiple words:'
walk, don't run
output:
prompt "There are 13 characters in "walk, don't run"."

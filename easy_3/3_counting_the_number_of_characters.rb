# frozen_string_literal: true

def prompt(message)
  puts message
end

def input
  gets.chomp
end

prompt 'Please write word or multiple words:'

def word_or_words
  input.include?(' ')
end 

prompt word_or_words
 
false = word
true = words


character_count = input determine number of characters and do not count spaces as a character in the variable input


  if input is word then prompt "There are #{character_count} characters in "#{word}"."
  else input is words then prompt "There are #{character_count} characters in "#{words}"."
  end
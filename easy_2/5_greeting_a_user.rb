# frozen_string_literal: true

def prompt(message)
  puts message
end

def user_name
  prompt 'What is your name?' 
  name = gets.chomp
  if name.end_with?('!')
  else 
  prompt "Hello #{name}."
  name = Bob!
  prompt "HELLO BOB. WHY ARE WE SCREAMING?"
end
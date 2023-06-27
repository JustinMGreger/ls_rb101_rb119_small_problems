# frozen_string_literal: true

def prompt(message)
  puts message
end

def user_name
  prompt 'What is your name?' 
  name = gets.chomp
  prompt "Hello Bob."
  prompt 'What is your name?' 
  name = Bob!
  prompt "HELLO BOB. WHY ARE WE SCREAMING?"
end
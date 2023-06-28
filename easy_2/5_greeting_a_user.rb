# frozen_string_literal: true

def prompt(message)
  puts message
end

def user_name
  prompt 'What is your name?'
  name = gets.chomp
  if name.end_with?('!')
    name = name.chop
    prompt "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    prompt "Hello #{name}."
  end
end

user_name

Further Exploration
Try modifying our solution to use String#chomp! and String#chop!, respectively.
# frozen_string_literal: true

def prompt(message)
  puts message
end

def integer_input
  gets.chomp.to_i
end

def solicit_numbers
  prompt '==> Enter the 1st number:'
  first_number = integer_input
  prompt '==> Enter the 2nd number:'
  second_number = integer_input
  prompt '==> Enter the 3rd number:'
  third_number = integer_input
  prompt '==> Enter the 4th number:'
  fourth_number = integer_input
  prompt '==> Enter the 5th number:'
  fifth_number = integer_input
  prompt '==> Enter the last number:'
  last_number = integer_input
end

def app
  [#{first_number}, #{second_number}, #{third_number}, #{fourth_number}, #{fifth_number}].include?(#{last_number})
  if true 
    "appears"
  else false 
    'does not appear'
end

def appear_or_not(first_number, second_number, third_number, fourth_number, fifth_number, last_number)
  prompt "The number #{last_number} #{app} in [#{first_number}, #{second_number}, #{third_number}, #{fourth_number}, #{fifth_number}]."
end

appear_or_not

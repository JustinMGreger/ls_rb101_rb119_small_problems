# frozen_string_literal: true

def prompt(message)
  puts message
end

def integer_input
  gets.chomp.to_i
end

def solicit_first_number
  prompt '==> Enter the 1st number:'
  first_number = integer_input
end

def solicit_second_number
  prompt '==> Enter the 2nd number:'
  second_number = integer_input
end

def solicit_third_number
  prompt '==> Enter the 3rd number:'
  third_number = integer_input
end

def solicit_fourth_number
  prompt '==> Enter the 4th number:'
  fourth_number = integer_input
end

def solicit_fifth_number
  prompt '==> Enter the 5th number:'
  fifth_number = integer_input
end

def solicit_last_number
  prompt '==> Enter the last number:'
  last_number = integer_input
end

def app(first_number, second_number, third_number, fourth_number, fifth_number, last_number)
  [first_number, second_number, third_number, fourth_number, fifth_number].include?(last_number)
end

def appear_or_not(first_number, second_number, third_number, fourth_number, fifth_number, last_number)
  if app(first_number, second_number, third_number, fourth_number, fifth_number, last_number)
    prompt "The number #{last_number} appears in [#{first_number}, #{second_number}, #{third_number}, #{fourth_number}, #{fifth_number}]."
  else
    prompt "The number #{last_number} does not appear in [#{first_number}, #{second_number}, #{third_number}, #{fourth_number}, #{fifth_number}]."
  end
end

numbers = first_number, second_number, third_number, fourth_number, fifth_number, last_number
appear_or_not(*numbers)

F: Lint/Syntax: unexpected token $end
(Using Ruby 2.7 parser; configure using TargetRubyVersion parameter, under AllCops)


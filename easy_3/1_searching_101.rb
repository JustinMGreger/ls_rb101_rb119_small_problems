# frozen_string_literal: true

def prompt(message)
  puts message
end

def integer_input
  gets.chomp.to_i
end

def app(numbers)
  [first_number, second_number, third_number, fourth_number, fifth_number].include?(last_number)
end

def appear_or_not(numbers)
  if app(numbers)
    prompt "The number #{last_number} appears in [#{first_number}, #{second_number}, #{third_number}, #{fourth_number}, #{fifth_number}]."
  else
    prompt "The number #{last_number} does not appear in [#{first_number}, #{second_number}, #{third_number}, #{fourth_number}, #{fifth_number}]."
  end
end

numbers = first_number, second_number, third_number, fourth_number, fifth_number, last_number
appear_or_not(*numbers)
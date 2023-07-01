# frozen_string_literal: true

def prompt(message)
  puts message
end

def integer_input
  gets.chomp.to_i
end

def solicit_number(order)
  prompt "==> Enter the #{order} number:"
  integer_input
end

def app(numbers, last_number)
  numbers.include?(last_number)
end

def appear_or_not(numbers)
  if app(numbers)
    prompt "The number #{last_number} appears in ."
  else
    prompt "The number #{last_number} does not appear in ."
  end
end

numbers = []
%w[1st 2nd 3rd 4th 5th].each do |order|
  numbers << solicit_number(order)
end

last_number = solicit_number('last')

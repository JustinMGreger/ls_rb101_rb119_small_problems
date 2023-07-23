# frozen_string_literal: true

# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Examples:

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

def appear_or_not(numbers, last_number)
  if app(numbers, last_number)
    prompt "The number #{last_number} appears in #{numbers}."
  else
    prompt "The number #{last_number} does not appear in #{numbers}."
  end
end

numbers = []
%w[1st 2nd 3rd 4th 5th].each do |order|
  numbers << solicit_number(order)
end

last_number = solicit_number('last')
appear_or_not(numbers, last_number)

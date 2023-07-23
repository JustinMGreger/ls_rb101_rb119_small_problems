# frozen_string_literal: true

# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Examples:
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

# LS solution:
# numbers = []

# puts "Enter the 1st number:"
# numbers << gets.chomp.to_i
# puts "Enter the 2nd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 3rd number:"
# numbers << gets.chomp.to_i
# puts "Enter the 4th number:"
# numbers << gets.chomp.to_i
# puts "Enter the 5th number:"
# numbers << gets.chomp.to_i
# puts "Enter the last number:"
# last_number = gets.chomp.to_i

# if numbers.include? last_number
#   puts "The number #{last_number} appears in #{numbers}."
# else
#   puts "The number #{last_number} does not appear in #{numbers}."
# end

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

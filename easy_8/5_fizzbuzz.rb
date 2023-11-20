# frozen_string_literal: true

# Write a method that takes two arguments: 
# the first is the starting number, and the second is the ending number.
# Print out all numbers from the starting number to the ending number,
# except if a number is divisible by 3, print "Fizz",
# if a number is divisible by 5, print "Buzz",
# and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Example:
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# two arguments: the first is the starting number, and the second is the ending number. 

# output:
# Print out all numbers from the starting number to the ending number,
# except if a number is divisible by 3, print "Fizz",
# if a number is divisible by 5, print "Buzz",
# and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Make the requirements explicit Identify rules:
# Write a method that takes two arguments:
# the first is the starting number,
# and the second is the ending number.
# Print out all numbers from the starting number to the ending number,
# except if a number is divisible by 3, print "Fizz",
# if a number is divisible by 5, print "Buzz",
# and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Mental model of the problem (optional):
# the fizzbuzz method accepts the (starting_number, ending_number) parameters and is defined as:
# Print out all numbers from the starting number to the ending number
# if a number is divisible by 3, print "Fizz"
# if a number is divisible by 5, print "Buzz",
# if a number is divisible by 3 and 5, print "FizzBuzz".

# Examples / Test Cases, Validate understanding of the problem:
# p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the fizzbuzz method accepts the (starting_number, ending_number) parameters and is defined as:
# iterate over all numbers in the inclusive range from the starting number to the ending number.
# if a number is divisible by 3, print "Fizz"
# if a number is divisible by 5, print "Buzz",
# if a number is divisible by 3 and 5, print "FizzBuzz".
# else print the block parameter.
# this is the last line of the fizzbuzz method.

# and Code.” Implementation of Algorithm:
def fizzbuzz(starting_number, ending_number)
  (starting_number..ending_number).map do |x|
    x % 15 == 0 ? "FizzBuzz" : x % 3 == 0 ? "Fizz" : x % 5 == 0 ? "Buzz" : x
  end.join(', ')
end

# LS Solution:
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

# test:
puts fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

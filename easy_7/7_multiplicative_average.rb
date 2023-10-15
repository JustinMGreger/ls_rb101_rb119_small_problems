# frozen_string_literal: true

# Multiplicative Average

# Write a method that takes an Array of integers as input,
# multiplies all the numbers together,
# divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places.
# Assume the array is non-empty.

# Examples:
# p show_multiplicative_average([3, 5]) == The result is 7.500
# p show_multiplicative_average([6]) == The result is 6.000
# p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == The result is 28361.667

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a non-empty Array of integers.

# output:
# the result is rounded to 3 decimal places.

# Make the requirements explicit Identify rules:
# 1. Write a method that takes an Array of integers as input.
# 2. multiplies all the numbers together.
# 3. divides the result by the number of entries in the Array.
# 4. and then prints the result rounded to 3 decimal places.
# 5. Assume the array is non-empty.

# Mental model of the problem (optional):
# def show_multiplicative_average(array_parameter)
# product_result = result of multiplying all the numbers in the array_parameter together.
# quotient_result = the result of dividing the product_result by the number of entries in the Array.
# rounded_quotient = round the quotient_result to 3 decimal places.
# print rounded_quotient

# Examples / Test Cases, Validate understanding of the problem:
# p show_multiplicative_average([3, 5]) == The result is 7.500
# p show_multiplicative_average([6]) == The result is 6.000
# p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == The result is 28361.667

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# 1. the show_multiplicative_average method accepts the (array_parameter) parameter and is defined as the following:
# 2. count how many elements are in the array_parameter and assign this to a number_elements varible.
# 3. the product_result variable is assigned the result of multiplying all the numbers in the array_parameter together.
# 4. the quotient_result variable is assigned the result of dividing the product_result by the number_elements varible.
# 5. the rounded_quotient variable is assigned the result of rounding the quotient_result to 3 decimal places.
# 6. "The result is #{rounded_quotient}".

# and Code.” Implementation of Algorithm:
# def show_multiplicative_average(array_parameter)
#   number_elements = array_parameter.count
#   product_result = array_parameter.inject(1) { |accumulator, n| accumulator * n }
#   quotient_result = product_result.to_f / number_elements
#   rounded_quotient = quotient_result.round(3)
#   "The result is #{format('%.3f', rounded_quotient)}"
# end

# LS Solution:
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end

# Further Exploration

# What happens if you omit the call to #to_f on the first line of our method?
# The result is 7.000
# false
# The result is 6.000
# false
# The result is 28361.000
# false
# the string portion of the string interpolation is printed The result is  and so is the boolean result of the comparing
# the numbers parameter to the desired outcome.
# the average becomes a float only from the format in the string interpolation not prior which is why the result is not
# the same as if the .to_f were applied to the 1 integer that is assigned to product.

# tests:
p show_multiplicative_average([3, 5]) == 'The result is 7.500'
p show_multiplicative_average([6]) == 'The result is 6.000'
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 'The result is 28361.667'

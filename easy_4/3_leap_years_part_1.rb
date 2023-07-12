# frozen_string_literal: true

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem, 

# Identify expected input: 
# year greater than 0

# and output:
# true if the year is a leap year, or false if it is not a leap year.

# Make the requirements explicit Identify rules:
# Write a method that takes any year greater than 0 as input, 
# and returns true if the year is a leap year, or false if it is not a leap year.
# leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. 
# If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Mental model of the problem (optional):
the leap_year? method accepts the year parameter.
determine if year is greater than 0.
if greater than 0 accept the input.
if less than 0 reject the input.
keep asking for input until it is greater than 0.

# if the year is a leap year return true 
# else return false 
# leap years == year % 4 == 0 unless year % 100 == 0 
# if year % 100 == 0 then year != leap_year unless year % 400 == 0

# Examples / Test Cases, Validate understanding of the problem:
# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true

# Data Structure, How we represent data that we will work with when converting the input to output:
# strings.

Algorithm, Steps for converting input to output:




# year = input any year greater than 0
# leap_year?(year) 
# if the year is a leap year return true 
# else return false 
# leap years == year % 4 == 0 unless year % 100 == 0 
# if year % 100 == 0 then year != leap_year unless year % 400 == 0





and Code.” Implementation of Algorithm:
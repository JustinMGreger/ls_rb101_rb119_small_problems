# frozen_string_literal: true
if year % 4 == 0 then it is a leap_year unless the year % 100 == 0 
if year % 100 == 0 then year != leap_year unless year % 400 == 0

Assume this rule is good for any year greater than year 0. 
Write a method that takes any year greater than 0 as input, 
and returns true if the year is a leap year, or false if it is not a leap year.

#Tests:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

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


Mental model of the problem (optional):
Examples / Test Cases, Validate understanding of the problem:
Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:
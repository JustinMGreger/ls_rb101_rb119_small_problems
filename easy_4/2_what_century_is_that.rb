# frozen_string_literal: true

# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Tests:
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem, 

# Identify expected input: 
# a year

# and output:
# a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Make the requirements explicit Identify rules:
# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Mental model of the problem (optional):
1. the century method accepts a year integer input.
2. and returns the century. 
3. The return value should be a string that begins with the century number.
4. and ends with st, nd, rd, or th as appropriate for that number.
5. New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples / Test Cases, Validate understanding of the problem:
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# Data Structure, How we represent data that we will work with when converting the input to output:
# strings

# Algorithm, Steps for converting input to output:
1. the century method accepts a year integer input.
2. and returns the century. 
3. The return value should be a string that begins with the century number and ends with st, nd, rd, or th as appropriate
for that number.
4. New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.
5. determine which ending is appropriate with the number.
6. build a set of integer from the 1st century to the 21st century.







# and Code.” Implementation of Algorithm:

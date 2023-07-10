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

# and Code.” Implementation of Algorithm:
1. Build a set of integers from the 1st century to the 21st century.
2. New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

centuries
0101-0200 = 2nd
0001-0100 = 1st







3. the centuries ends with st, nd, rd, or th as appropriate for that century.
4. the centuries are strings.
5. the century method accepts a year integer input.
6. determine which century the year integer is in.
7. return the century string.
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
1st Century: 1 - 100
2nd Century: 101 - 200
3rd Century: 201 - 300
4th Century: 301 - 400
5th Century: 401 - 500
6th Century: 501 - 600
7th Century: 601 - 700
8th Century: 701 - 800
9th Century: 801 - 900
10th Century: 901 - 1000
11th Century: 1001 - 1100
12th Century: 1101 - 1200
13th Century: 1201 - 1300
14th Century: 1301 - 1400
15th Century: 1401 - 1500
16th Century: 1501 - 1600
17th Century: 1601 - 1700
18th Century: 1701 - 1800
19th Century: 1801 - 1900
20th Century: 1901 - 2000
21st Century: 2001 - 2100


3. the centuries ends with st, nd, rd, or th as appropriate for that century.
4. the centuries are strings.
5. the century method accepts a year integer input.
6. determine which century the year integer is in.
7. return the century string.
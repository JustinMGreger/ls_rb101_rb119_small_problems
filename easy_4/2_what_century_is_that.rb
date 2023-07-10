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

def century(year)
determine which century the year integer is in.

def calculate_century_number(year)
  if year % 100 == 0
    year / 100
  else
    return year / 100 + 1
  end
end

def calculate_century_suffix(century)
  suffix = case century % 10
    when 1 then "st"
    when 2 then "nd"
    when 3 then "rd"
    else "th"
  end

  if [11, 12, 13].include?(century % 100)
    suffix = "th"
  end

  suffix
end
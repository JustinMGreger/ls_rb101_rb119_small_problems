# frozen_string_literal: true

# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number, and ends with
# st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

def century(year)
  century_number = calculate_century_number(year)
  suffix = calculate_century_suffix(century_number)
  "#{century_number}#{suffix} Century"
end

def calculate_century_number(year)
  (year % 100).zero? ? year / 100 : year / 100 + 1
end

def calculate_century_suffix(century)
  suffix = case century % 10
           when 1 then 'st'
           when 2 then 'nd'
           when 3 then 'rd'
           else 'th'
           end

  suffix = 'th' if [11, 12, 13].include?(century % 100)

  suffix
end

# Tests:
p century(2000) == '20th Century' # result: true
p century(2001) == '21st Century' # result: true
p century(1965) == '20th Century' # result: true
p century(256) == '3rd Century' # result: true
p century(5) == '1st Century' # result: true
p century(10_103) == '102nd Century' # result: true
p century(1052) == '11th Century' # result: true
p century(1127) == '12th Century' # result: true
p century(11_201) == '113th Century' # result: true

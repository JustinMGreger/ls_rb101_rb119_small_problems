# frozen_string_literal: true

# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4,
# unless the year is also divisible by 100.
# If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0.
# Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year,
# or false if it is not a leap year.

# Examples:
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# LS solution:
# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

# Further Exploration

# Can you rewrite leap_year? to perform its tests in the opposite order of the above solution?
# That is, test whether the year is divisible by 4 first, then, if necessary, test whether it is divisible by 100,
# and finally, if necessary, test whether it is divisible by 400.
# Answer: yes.

# Is this solution simpler or more complex than the original solution?
# Answer: it is more complex.

def leap_year?(year)
  if ((year % 4).zero? && year % 100 != 0) || (year % 400.zero?)
    true
  else
    false
  end
end

# Tests:
p leap_year?(2016) == true # result: true.
p leap_year?(2015) == false # result: true.
p leap_year?(2100) == false # result: true.
p leap_year?(2400) == true # result: true.
p leap_year?(240_000) == true # result: true.
p leap_year?(240_001) == false # result: true.
p leap_year?(2000) == true # result: true.
p leap_year?(1900) == false # result: true.
p leap_year?(1752) == true # result: true.
p leap_year?(1700) == false # result: true.
p leap_year?(1) == false # result: true.
p leap_year?(100) == false # result: true.
p leap_year?(400) == true # result: true.

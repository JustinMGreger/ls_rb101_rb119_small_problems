# frozen_string_literal: true

# Further Exploration

# The order in which you perform tests for a leap year calculation is important.

# my solution:
# def leap_year?(year)
#   (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)
# end

# For what years will leap_year? fail if you rewrite it as:
# 2400, 240000, 2000, and 400

# LS Solution:
# def leap_year?(year)
#  if year % 100 == 0
#    false
#  elsif year % 400 == 0
#    true
#  else
#    year % 4 == 0
#  end
#end

# Further Exploration

# Can you rewrite leap_year? to perform its tests in the opposite order of the above solution? 
# Yes the results are different, because the leap_year? method is determining what the leap_year? method is not checking 
# what the modern era under the Gregorian Calendar, agrees a leap year is.

# That is, test whether the year is divisible by 4 first, 
# then, if necessary, test whether it is divisible by 100, 
# and finally, if necessary, test whether it is divisible by 400. 

# Is this solution simpler or more complex than the original solution?
# It is more complex.

def leap_year?(year)
  if year % 4 == 0
    true
  elsif (year % 100).zero?
    false
  else
    year % 400 == 0
  end
end

# Tests:
p leap_year?(2016) == true # result: true. same result.
p leap_year?(2015) == false # result: true. different result.
p leap_year?(2100) == false # result: false. same result.
p leap_year?(2400) == true # result: true. same result.
p leap_year?(240000) == true # result: true. same result.
p leap_year?(240001) == false # result: true. different result.
p leap_year?(2000) == true # result: true. same result.
p leap_year?(1900) == false # result: false. same result.
p leap_year?(1752) == true # result: true. same result.
p leap_year?(1700) == false # result: false. same result.
p leap_year?(1) == false # result: true. different result.
p leap_year?(100) == false # result: false. same result.
p leap_year?(400) == true # result: true. same result.

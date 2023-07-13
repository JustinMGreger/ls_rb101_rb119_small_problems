# frozen_string_literal: true

# Further Exploration

# The order in which you perform tests for a leap year calculation is important.

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
# Yes the results are different, because it determining what a leap year is not what human civilization in the USA agrees
# a leap year is.

# That is, test whether the year is divisible by 4 first, 
# then, if necessary, test whether it is divisible by 100, 
# and finally, if necessary, test whether it is divisible by 400. 
# Is this solution simpler or more complex than the original solution?

def leap_year?(year)
  if year % 4 == 0
    true
  elsif year % 100 == 0
    false
  else
  year % 400 == 0
  end
end

# Tests:
p leap_year?(2016) == true # result: true 
p leap_year?(2015) == false # result: true 
p leap_year?(2100) == false # result: false
p leap_year?(2400) == true # result: true
p leap_year?(240000) == true # result: true
p leap_year?(240001) == false # result: true 
p leap_year?(2000) == true # result: true
p leap_year?(1900) == false # result: false
p leap_year?(1752) == true # result: true 
p leap_year?(1700) == false # result: false
p leap_year?(1) == false # result: true
p leap_year?(100) == false # result: false
p leap_year?(400) == true # result: true


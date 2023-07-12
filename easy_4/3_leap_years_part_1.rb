# frozen_string_literal: true

def leap_year?(year)  
  (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)
end

# Tests:
p leap_year?(2016) == true # result: true
p leap_year?(2015) == false # result: true
p leap_year?(2100) == false # result: true
p leap_year?(2400) == true # result: true
p leap_year?(240000) == true # result: true
p leap_year?(240001) == false # result: true
p leap_year?(2000) == true # result: true
p leap_year?(1900) == false # result: true
p leap_year?(1752) == true # result: true
p leap_year?(1700) == false # result: true
p leap_year?(1) == false # result: true
p leap_year?(100) == false # result: true
p leap_year?(400) == true # result: true

Further Exploration

The order in which you perform tests for a leap year calculation is important. For what years will leap_year? 
fail if you rewrite it as:

def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end
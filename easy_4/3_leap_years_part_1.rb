# frozen_string_literal: true

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
p leap_year?(240000) == true # result: true.
p leap_year?(240001) == false # result: true.
p leap_year?(2000) == true # result: true.
p leap_year?(1900) == false # result: true.
p leap_year?(1752) == true # result: true.
p leap_year?(1700) == false # result: true.
p leap_year?(1) == false # result: true.
p leap_year?(100) == false # result: true.
p leap_year?(400) == true # result: true.

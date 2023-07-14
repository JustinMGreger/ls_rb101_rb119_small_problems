# frozen_string_literal: true

def julian_calendar?(year)
  (year % 4).zero?
end

def gregorian_calendar?(year)
  if ((year % 4).zero? && year % 100 != 0) || (year % 400).zero?
    true
  else
    false
  end
end

def leap_year?(year)
  if year <= 1752 
    julian_calendar?(year)
  else
    gregorian_calendar?(year)
  end
end

# Tests:
p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

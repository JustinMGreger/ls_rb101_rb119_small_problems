# frozen_string_literal: true


Prior to 1752, the Julian Calendar  

Using this information, update the method from the previous exercise to determine leap years both before and after 1752.


def julian_calendar?(year)
  (year % 4).zero?
end

def gregorian_calendar?(year)
  if ((year % 4).zero? && year % 100 != 0) || (year % 400.zero?)
    true
  else
    false
  end
end

def leap_year?(year)
  if years <= 1752 
    julian_calendar?(year)
  else
    gregorian_calendar?(year)
  end
end

# Tests:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true
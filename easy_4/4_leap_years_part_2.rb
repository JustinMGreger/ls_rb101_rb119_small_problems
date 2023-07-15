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
p leap_year?(2016) == true # result: true.
p leap_year?(2015) == false # result: true.
p leap_year?(2100) == false # result: true.
p leap_year?(2400) == true # result: true.
p leap_year?(240_000) == true # result: true.
p leap_year?(240_001) == false # result: true.
p leap_year?(2000) == true # result: true.
p leap_year?(1900) == false # result: true.
p leap_year?(1752) == true # result: true.
p leap_year?(1700) == true # result: true.
p leap_year?(1) == false # result: true.
p leap_year?(100) == true # result: true.
p leap_year?(400) == true # result: true.

# Further Exploration

# Find a web page that talks about leap years or the different calendar systems, 
# Answer: https://en.wikipedia.org/wiki/Leap_year

# and talk about the interesting information you learned. 
# Answer: 
# https://en.wikipedia.org/wiki/Lunisolar_calendar
# lunisolar calendars add a month in leap years.
# https://en.wikipedia.org/wiki/Leap_year_problem
# https://en.wikipedia.org/wiki/Time_formatting_and_storage_bugs#Year_2100

For instance, how was the change from the Julian calendar to the Gregorian calendar handled in your ancestral lands?
Do they even use these calendar systems? 
If you live someplace that doesn't use the Gregorian calendar, tell us about your calendar system.
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
# On 1 January 45 BC, by edict, Julius Caesar reformed the historic Roman calendar to make it a consistent solar calendar
# (rather than one which was neither strictly lunar nor strictly solar), thus removing the need for frequent intercalary 
# months. His rule for leap years was a simple one: add a leap day every four years. This algorithm is close to reality: a
# Julian year lasts 365.25 days, a mean tropical year about 365.2422 days.[4] Consequently, even this Julian calendar 
# drifts out of 'true' by about three days every 400 years. The Julian calendar continued in use unaltered for about 1600
# years until the Catholic Church became concerned about the widening divergence between the March Equinox and 21 March
# In the Gregorian calendar, the standard calendar in most of the world, almost every fourth year is a leap year. Each 
# leap year, the month of February has 29 days instead of 28. Adding one extra day in the calendar every four years 
# compensates for the fact that a period of 365 days is shorter than a tropical year by almost 6 hours.[7] However, this 
# correction is excessive and the Gregorian reform modified the Julian calendar's scheme of leap years as follows: Every 
# year that is exactly divisible by four is a leap year, except for years that are exactly divisible by 100, but these 
# centurial years are leap years if they are exactly divisible by 400. For example, the years 1700, 1800, and 1900 are not
# leap years, but the years 1600 and 2000 are.
# https://en.wikipedia.org/wiki/Lunisolar_calendar
# lunisolar calendars add a month in leap years.
# https://en.wikipedia.org/wiki/Leap_year_problem
# The leap year problem (also known as the leap year bug or the leap day bug) is a problem for both digital 
# (computer-related) and non-digital documentation and data storage situations which results from errors in the 
# calculation of which years are leap years, or from manipulating dates without regard to the difference between leap 
# years and common years.
# Leap year bugs typically fall into two categories, based on the amount of impact they may have in real-world usage:
# [1] Those that lead to error conditions, such as exceptions, error return codes, uninitialized variables, or endless 
# loops
# [2] Those that lead to incorrect data, such as off-by-one problems in range queries or aggregation
# https://en.wikipedia.org/wiki/Time_formatting_and_storage_bugs#Year_2100
# In computer science, time formatting and storage bugs are a class of software bugs that cause errors in time and date 
# calculation or display. These are most commonly manifestations of arithmetic overflow, but can also be the result of 
# other issues. The most well-known consequence of bugs of this type is the Y2K problem, but many other milestone dates or
# times exist that have caused or will cause problems depending on various programming deficiencies.

# For instance, how was the change from the Julian calendar to the Gregorian calendar handled in your ancestral lands?
# Answer:
# the British Empire (including the eastern part of what is now the United States) adopted the Gregorian calendar in 1752.
# Old Style and New Style dates. Main articles: Old Style and New Style dates and Calendar (New Style) Act 1750 "Old
# Style" (O.S.) and "New Style" (N.S.) indicate dating systems before and after a calendar change, respectively. Usually,
# this is the change from the Julian calendar to the Gregorian calendar as enacted in various European countries between
# 1582 and the early 20th century. In England, Wales, Ireland and Britain's American colonies, there were two calendar
# changes, both in 1752. The first adjusted the start of a new year from Lady Day (25 March) to 1 January (which Scotland
# had done from 1600), while the second discarded the Julian calendar in favour of the Gregorian calendar, removing 11
# days from the September 1752 calendar to do so.[55][56] To accommodate the two calendar changes, writers used dual
# dating to identify a given day by giving its date according to both styles of dating.

# Do they even use these calendar systems?
# Answer:
# yes.

# If you live someplace that doesn't use the Gregorian calendar, tell us about your calendar system.
# Answer:
# I do not.

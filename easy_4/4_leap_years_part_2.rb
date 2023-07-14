A continuation of the previous exercise.

The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. 
Prior to 1752, the Julian Calendar was used. 
Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

def leap_year?(year)
  if ((year % 4).zero? && year % 100 != 0) || (year % 400.zero?)
    true
  else
    false
  end
end
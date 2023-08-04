# frozen_string_literal: true

# The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# Disregard Daylight Savings and Standard Time and other complications.

# 1 day = 1440 minutes.
# 1 hour = 60 minutes.

def positive_negative(minutes)
  if minutes >= 0
    return :positive, minutes
  else
    return :negative, minutes
  end
end

def time_of_day(category, minutes)

(positive + 0).divmod(60)

if quotient greater than 24 then subtract by 24 until less than 24
  then return quotient and remainder


if negative then negative + 1440 until positive
negative_variable.divmod(60)

quotient
remainder
Kernel.format("%d, %s, %d", "quotient", :, "remainder")
end
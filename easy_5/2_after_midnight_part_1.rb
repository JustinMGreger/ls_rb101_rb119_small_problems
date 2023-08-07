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

# my solution:
# def time_of_day(minutes)
#   total_minutes = ((minutes % 1440) + 1440) % 1440

#   hours, minutes = total_minutes.divmod(60)
#   Kernel.format('%<hours>02d:%<minutes>02d', hours: hours, minutes: minutes)
# end

# LS solution:
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes_to_0_through_1439(minutes)
#   while minutes < 0
#     minutes += MINUTES_PER_DAY
#   end

#   minutes % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# Further Exploration

# Problem 1
# The % operator's interaction with negative values is confusing and difficult to remember,
# as described in the Introduction to Programming with Ruby Book.
# Because of that, we recommend not using % with negative numbers,
# but that you should first convert the negative values to positive numbers so you can write more explicit code.
# This problem is one such place where it's probably easier to take this approach.
# However, that doesn't mean you can't use % at all.
# In fact, it's possible to write a single calculation with % that performs the entire normalization operation in
# one line of code.
# Give it a try, but don't spend too much time on it.

# Answer based on LS solution:
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def normalize_minutes_per_day(minutes)
#   minutes % MINUTES_PER_DAY
# end

# def time_of_day(delta_minutes)
#   delta_minutes = normalize_minutes_per_day(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%<hours>02d:%<minutes>02d', hours: hours, minutes: minutes)
# end

# Answer: my original solution fufills this requirement:
# my solution:
# def time_of_day(minutes)
#   total_minutes = ((minutes % 1440) + 1440) % 1440

#   hours, minutes = total_minutes.divmod(60)
#   Kernel.format('%<hours>02d:%<minutes>02d', hours: hours, minutes: minutes)
# end

# Problem 2

# How would you approach this problem if you were allowed to use ruby's Date and Time classes?
# Answer:
def time_of_day(minutes)
  midnight = Time.new(1970, 1, 1, 0, 0, 0)

  time = midnight + (minutes * 60)

  time.strftime('%H:%M')
end
# tests:
p time_of_day(0) == '00:00' # result: true
p time_of_day(-3) == '23:57' # result: true
p time_of_day(35) == '00:35' # result: true
p time_of_day(-1437) == '00:03' # result: true
p time_of_day(3000) == '02:00' # result: true
p time_of_day(800) == '13:20' # result: true
p time_of_day(-4231) == '01:29' # result: true

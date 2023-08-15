# frozen_string_literal: true

# As seen in the previous exercise, the time of day can be represented as the number of minutes before
# or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after
# midnight, respectively.
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Yes, we know that 24:00 isn't a valid time in 24-hour format.
# Humor us, though; it makes the problem more interesting.

# Disregard Daylight Savings and Standard Time and other irregularities.

# my solution:
# def before_midnight(time_string)
#   return 0 if ['24:00', '00:00'].include?(time_string)

#   hours, minutes = time_string.split(':').map(&:to_i)
#   total_minutes = (24 * 60) - (hours * 60 + minutes)
#   total_minutes % 1440
# end

# def after_midnight(time_string)
#   return 0 if time_string == '24:00'

#   hours, minutes = time_string.split(':').map(&:to_i)
#   total_minutes = hours * 60 + minutes
#   total_minutes % 1440
# end

# LS solution:
# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end

# Further Exploration

# How would these methods change if you were allowed to use the Date and Time classes?

# LS Answer:
# require 'date'

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   datetime = DateTime.parse("2000-01-01 #{time_str}")
#   datetime.hour * MINUTES_PER_HOUR + datetime.minute
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end

# my answer:
require 'date'

def after_midnight(time_string)
  datetime = DateTime.parse("2023-08-14 #{time_string}")
  datetime.hour * 60 + datetime.minute
end

def before_midnight(time_string)
  return 0 if time_string == '24:00'
  
  datetime = DateTime.parse("2023-08-14 #{time_string}")
  (24 * 60) - (datetime.hour * 60 + datetime.minute)
end

# tests:
p after_midnight('00:00').zero?
p before_midnight('00:00').zero?
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00').zero?
p before_midnight('24:00').zero?

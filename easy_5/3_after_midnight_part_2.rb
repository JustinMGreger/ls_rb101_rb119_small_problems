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

# and Code.” Implementation of Algorithm:
def before_midnight(time_string)
  return 0 if ['24:00', '00:00'].include?(time_string)

  hours, minutes = time_string.split(':').map(&:to_i)
  total_minutes = (24 * 60) - (hours * 60 + minutes)
  total_minutes % 1440
end

def after_midnight(time_string)
  return 0 if time_string == '24:00'

  hours, minutes = time_string.split(':').map(&:to_i)
  total_minutes = hours * 60 + minutes
  total_minutes % 1440
end

# tests:
p after_midnight('00:00').zero?
p before_midnight('00:00').zero?
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

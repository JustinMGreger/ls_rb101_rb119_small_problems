# frozen_string_literal: true

# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
# and returns a String that represents that angle in degrees, minutes and seconds.
# You should use a degree symbol (°) to represent degrees,
# a single quote (') to represent minutes,
# and a double quote (") to represent seconds.
# A degree has 60 minutes, while a minute has 60 seconds.

# NOTE: your results may differ slightly depending on how you round values,
# but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:
# DEGREE = "\xC2\xB0"

# my solution:
# DEGREE = "\xC2\xB0"
# MINUTES = "\x27"
# SECONDS = "\x22"

# def dms(floating_point)
#   degrees, minutes, seconds = decompose_angle(floating_point)
#   format_angle(degrees, minutes, seconds)
# end

# private

# def decompose_angle(floating_point)
#   degrees, remainder = floating_point.divmod(1.0)
#   minutes, seconds = (remainder * 60).divmod(1.0)
#   seconds = (seconds * 60).round

#   adjust_for_overflow(degrees, minutes, seconds)
# end

# def adjust_for_overflow(degrees, minutes, seconds)
#   if seconds == 60
#     seconds = 0
#     minutes += 1
#   end

#   if minutes == 60
#     minutes = 0
#     degrees += 1
#   end

#   [degrees, minutes, seconds]
# end

# def format_angle(degrees, minutes, seconds)
#   "#{degrees.floor}#{DEGREE}#{minutes.floor.to_s.rjust(2, '0')}#{MINUTES}#{seconds.to_s.rjust(2, '0')}#{SECONDS}"
# end

# LS solution:
# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# Since degrees are normally restricted to the range 0-360,
# can you modify the code so it returns a value in the appropriate range when the input is less than 0
# or greater than 360?

# my modification of the code:
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  degrees_float %= 360
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format("#{degrees}#{DEGREE}%02d'%02d\"", minutes, seconds)
end

# tests:
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")

# tests:
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

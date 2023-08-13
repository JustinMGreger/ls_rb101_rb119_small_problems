# frozen_string_literal: true
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after
# midnight, respectively.
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

# Yes, we know that 24:00 isn't a valid time in 24-hour format.
# Humor us, though; it makes the problem more interesting.

# Disregard Daylight Savings and Standard Time and other irregularities.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem, 
# Identify expected input: a time of day in 24 hour format
# and output: return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.

# Make the requirements explicit Identify rules:
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.
# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.
# You may not use ruby's Date and Time methods.
# Disregard Daylight Savings and Standard Time and other irregularities.

# Mental model of the problem (optional):
# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.
# the before_midnight method if the number of minutes is negative.
# the after_midnight method if the number of minutes is positive.
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
# You may not use ruby's Date and Time methods.
# Disregard Daylight Savings and Standard Time and other irregularities.

# Examples / Test Cases, Validate understanding of the problem:
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# Data Structure, How we represent data that we will work with when converting the input to output:
# answer: possibly array.

Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:
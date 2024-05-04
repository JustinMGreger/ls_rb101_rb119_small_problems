# frozen_string_literal: true

# Write a method that takes a string as an argument,
# and returns true if all parentheses in the string are properly balanced,
# false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Examples:
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false
# balanced?('What ())(is() up') == false

# Note that balanced pairs must each start with a (, not a ).

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a string.

# output:
# true if all parentheses in the string are properly balanced
# false otherwise.

# Make the requirements explicit Identify rules:
# Write a method that takes a string as an argument,
# and returns true if all parentheses in the string are properly balanced,
# false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
# Note that balanced pairs must each start with a (, not a ).

# Mental model of the problem (optional):
# def balanced?(string)
# if all parentheses in the string are properly balanced return true.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
# Note that balanced pairs must each start with a (, not a ).
# else false.

# Examples / Test Cases, Validate understanding of the problem:
# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false
# p balanced?('What ())(is() up') == false

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the balanced? method accepts the (string) parameter and is defined as the following:
# the stack variable is assigned the [] array.

# and Code. Implementation of Algorithm:

# Tests:
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false

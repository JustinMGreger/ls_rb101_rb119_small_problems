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
# pass the following block of code to each character in the string parameter:
# if the char block parameter is equal to the '(' string then prepend the char block parameter to the end of the stack
# variable.
# elsif the char block parameter is equal to the ')' string then return false if the stack variable is empty then
# remove and return the last element from the stack variable modifying the stack variable itself in the process.
# this is the last line of the if statement.
# this is the last line of the .each_char method.
# return true if the stack variable is empty and false otherwise.
# this is the last line of the balanced? method.

# and Code. Implementation of Algorithm:
# def balanced?(string)
#   stack = []

#   string.each_char do |char|
#     if char == '('
#       stack.push(char)
#     elsif char == ')'
#       return false if stack.empty?

#       stack.pop
#     end
#   end
#   stack.empty?
# end

# Tests:
# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false
# p balanced?('What ())(is() up') == false

# LS Solution:
# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end

# Tests:
# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false
# p balanced?('What ())(is() up') == false

# Further Exploration

# There are a few other characters that should be matching as well.
# Square brackets and curly brackets normally come in pairs.
# Quotation marks(single and double) also typically come in pairs and should be balanced.
# Can you expand this method to take into account those characters?

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a string.

# output:
# true if all parentheses, Square brackets, curly brackets, Quotation marks(single and double)
# in the string are properly balanced
# false otherwise.

# Make the requirements explicit Identify rules:
# Write a method that takes a string as an argument,
# and returns true if all parentheses in the string are properly balanced,
# false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
# Note that balanced pairs must each start with a (, not a ).
# There are a few other characters that should be matching as well.
# Square brackets and curly brackets normally come in pairs.
# Quotation marks(single and double) also typically come in pairs and should be balanced.
# Can you expand this method to take into account those characters?

# Mental model of the problem (optional):
# def balanced?(string)
# and returns true if all parentheses, Square brackets, curly brackets and Quotation marks(single and double)
# in the string are properly balanced.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
# Note that balanced pairs must each start with a (, not a ).
# To be properly balanced, Square brackets must occur in matching '[' and ']' pairs.
# Note that balanced pairs must each start with a [, not a ].
# To be properly balanced, curly brackets must occur in matching '{' and '}' pairs.
# Note that balanced pairs must each start with a {, not a }.
# To be properly balanced, single Quotation marks must occur in matching ''' and ''' pairs.
# Note that balanced pairs must each start with a ', not a '.
# To be properly balanced, double Quotation marks must occur in matching '"' and '"' pairs.
# Note that balanced pairs must each start with a ", not a ".
# false otherwise.

# Examples / Test Cases, Validate understanding of the problem:
# puts balanced?('What (is) this?') == true
# puts balanced?('What is) this?') == false
# puts balanced?('What (is this?') == false
# puts balanced?('((What) (is this))?') == true
# puts balanced?('((What)) (is this))?') == false
# puts balanced?('Hey!') == true
# puts balanced?(')Hey!(') == false
# puts balanced?('What ((is))) up(') == false
# puts balanced?('What ())(is() up') == false
# puts balanced?('What [is] this?') == true
# puts balanced?('What is] this?') == false
# puts balanced?('What [is this?') == false
# puts balanced?('What {is} this?') == true
# puts balanced?('What is} this?') == false
# puts balanced?('What {is this?') == false
# puts balanced?("What 'is' this?") == true
# puts balanced?("What is' this?") == false
# puts balanced?("What 'is this?") == false
# puts balanced?('What "is" this?') == true
# puts balanced?('What is" this?') == false
# puts balanced?('What "is this?') == false

# Data Structure, How we represent data that we will work with when converting the input to output:
# arrays & hashes.

# Algorithm, Steps for converting input to output:
# the balanced? method accepts the (string) parameter and is defined as the following:
# the stack variable is assigned the [] array.
# pass the following block of code to each character in the string parameter:





and Code. Implementation of Algorithm:

# Tests
puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
puts balanced?('What ())(is() up') == false
puts balanced?('What [is] this?') == true
puts balanced?('What is] this?') == false
puts balanced?('What [is this?') == false
puts balanced?('What {is} this?') == true
puts balanced?('What is} this?') == false
puts balanced?('What {is this?') == false
puts balanced?("What 'is' this?") == true
puts balanced?("What is' this?") == false
puts balanced?("What 'is this?") == false
puts balanced?('What "is" this?') == true
puts balanced?('What is" this?') == false
puts balanced?('What "is this?') == false

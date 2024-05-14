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
# return false if the result of passing the char and stack parameter to the process_char method
# is false.
# return true if the stack variable is empty.
# this is the last line fo the balanced? method.
# the process_char method accepts the (char, stack) parameters and is defined as the following:
# if the result of passing the char block parameter to the opening? method returns true return the result of passing the
# char and stack block parameters to the push_if_opening method.
# if the result of passing the char block parameter to the closing? method returns true return the result of passing the
# char and stack block parameters to the pop_if_closing method.
# if the result of passing the char block parameter to the quote? method returns true return the result of passing the
# char and stack block parameters to the handle_quote_if_quote method.
# return true.
# this is the last line of the process_char method.
# the opening? method accepts the (char) parameter and is defined as the following:
# return true if the ['(', '[', '{'] array includes the (char) parameter.
# this is the last line of the opening? method.
# the closing? method accepts the (char) parameter and is defined as the following:
# return true if the [')', ']', '}'] array includes the (char) parameter.
# this is the last line of the closing? method.
# the quote? method accepts the (char) parameter and is defined as the following:
# return true if the ["'", '"'] array includes the (char) parameter.
# this is the last line of the quote? method.
# the match_for_opening method accepts the (char) parameter and is defined as the following:
# return the value assigned to the [char] key in the { '(' => ')', '[' => ']', '{' => '}' } hash.
# this is the last line of the match_for_opening method.
# the push_if_opening method accepts the (char, stack) parameters and is defined as the following:
# append the result of passing the char block parameter to the match_for_opening method to the end
# of the stack parameter.
# return true.
# this is the last line of the push_if_opening method.
# the pop_if_closing method accepts the (char, stack) parameters and is defined as the following:
# if the stack parameter is empty? return true or return true if the result of removing the last
# element from the stack parameter and checking if it is not the char parameter then return false.
# return true.
# this is the last line of the pop_if_closing method.
# the handle_quote_if_quote method accepts the (char, stack) parameters and is defined as the following:
# if the stack parameter is not empty return true and if the last element in the stack parameter is equal
# to the char block parameter return true then return a new array that is the result of removing the last
# element in the stack parameter.
# else append the char block parameter to the end of the stack block parameter.
# this is the last line of the if statement.
# return true
# this is the last line of the handle_quote_if_quote method.

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

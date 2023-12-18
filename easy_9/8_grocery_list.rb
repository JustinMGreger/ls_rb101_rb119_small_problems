# frozen_string_literal: true

# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# Example:
# p buy_fruit([['apples', 3], ['orange', 1], ['bananas', 2]]) ==
# %w[apples apples apples orange bananas bananas]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a grocery list (array) of fruits with quantities.

# output:
# an array of the correct number of each fruit.

# Make the requirements explicit Identify rules:
# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# Mental model of the problem (optional):
# def buy_fruit(grocery_list)
# new_array = grocery_list in a single array of the result of fruit count times.

# Examples / Test Cases, Validate understanding of the problem:
# p buy_fruit([['apples', 3], ['orange', 1], ['bananas', 2]]) ==
# %w[apples apples apples orange bananas bananas]

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the buy_fruit method accepts the (grocery_list) parameter and is defined as the following:
# the new_array varible is assigned the [] array.
# pass the following block of code to each element in the grocery_list parameter:
# for count block parameter times append the fruit block parameter to the new_array varible.
# return the value assigned to the new_array varible.

# and Code. Implementation of Algorithm:
# def buy_fruit(grocery_list)
#   new_array = []

#   grocery_list.each do |fruit, count|
#     count.times { new_array << fruit }
#   end

#   new_array
# end

# Solution 1:
# def buy_fruit(list)
#   expanded_list = []

#   list.each do |item|
#     fruit, quantity = item[0], item[1]
#     quantity.times { expanded_list << fruit }
#   end

#   expanded_list
# end

# tests:
p buy_fruit([['apples', 3], ['orange', 1], ['bananas', 2]]) == %w[apples apples apples orange bananas bananas]

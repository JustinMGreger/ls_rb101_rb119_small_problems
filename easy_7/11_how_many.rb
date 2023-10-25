# frozen_string_literal: true

# Write a method that counts the number of occurrences of each element in a given array.

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'.
# Once counted, print each element alongside the number of occurrences.

# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Make the requirements explicit Identify rules:
# the count_occurrences method that counts the number of occurrences of each element in the vehicles array parameter.
# The words in the vehicles array parameter are case-sensitive: 'suv' != 'SUV'.
# Once counted, print each element alongside the number of occurrences.

# Mental model of the problem (optional):
# the count_occurrences method accepts the (vehicles) parameter and is defined as the following:
# count the number of case-sensitive occurrences of each element in the vehicles parameter.
# print each element alongside the number of occurrences.

# Examples / Test Cases, Validate understanding of the problem:
# count_occurrences(vehicles)
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the count_occurrences method accepts the (vehicles) parameter and is defined as the following:
# determine the unique elements in the vehicles parameter and assign this to a varible.
# count the number of case-sensitive occurrences of each element in the vehicles parameter.
# print each element alongside the number of occurrences.

# and Code.” Implementation of Algorithm:
vehicles = %w[
  car car truck car SUV truck
  motorcycle motorcycle car truck
]

def count_occurrences(vehicles)
  unique_vehicles = vehicles.uniq
  unique_vehicles.each do |vehicle|
    puts "#{vehicle} => #{vehicles.count(vehicle)}"
  end
end

# test:
count_occurrences(vehicles)
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# frozen_string_literal: true

# Write a method that takes an Array of Integers between 0 and 19,
# and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen,
# fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Mental model of the problem (optional):
1. Write a method.
2. the method accepts an Array of Integers between 0 and 19 as the parameter.
3. sort the Integers based on the English words for each number: zero, one, two, three, four, five, six, seven,
eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
4. the method returns an Array of those Integers

# tests:
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:
# frozen_string_literal: true

# Create a method that takes 2 arguments, an array and a hash.
# The array will contain 2 or more elements that,
# when combined with adjoining spaces, will produce a person's name.
# The hash will contain two keys, :title and :occupation, and the appropriate values.
# Your method should return a greeting that uses the person's full name,
# and mentions the person's title and occupation.

# Example:
# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# 2 arguments, an array and a hash.
# The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name.
# The hash will contain two keys, :title and :occupation, and the appropriate values.

# output:
# a greeting that uses the person's full name, and mentions the person's title and occupation.

# Make the requirements explicit Identify rules:
# Create a method that takes 2 arguments, an array and a hash.
# The array will contain 2 or more elements that,
# when combined with adjoining spaces, will produce a person's name.
# The hash will contain two keys, :title and :occupation, and the appropriate values.
# Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

# Mental model of the problem (optional):
# def greetings(array_parameter, hash_parameter)
# name = array_parameter combined with adjoining spaces into a single string.
# title = hash_parameter[:title]
# occupation = hash_parameter[:occupation]
# "Hello, #{name}! Nice to have a #{title} #{occupation} around."

# Examples / Test Cases, Validate understanding of the problem:
# p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

# Data Structure, How we represent data that we will work with when converting the input to output:
# array and hash.

# Algorithm, Steps for converting input to output:
# the greetings method accepts the array_parameter and hash_parameter and is defined as the following:
# the name varible is assigned to the result of joining the elements in the array_parameter into a single string
# seperated by each word with the ' ' string.
# the title varible is assigned to the result of returning the value assigned to the title: in the hash_parameter.
# the occupation varible is assigned to the result of returning the value assigned to the occupation: in the
# hash_parameter.
# return the string with string interpolation: "Hello, #{name}! Nice to have a #{title} #{occupation} around."

# and Code. Implementation of Algorithm:
# def greetings(array_parameter, hash_parameter)
#   name = array_parameter.join(' ')
#   title = hash_parameter[:title]
#   occupation = hash_parameter[:occupation]
#   "Hello, #{name}! Nice to have a #{title} #{occupation} around."
# end

# LS Solution:
# def greetings(name, status)
#   "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around."
# end

# Further Exploration

# This method doesn't actually pass rubocop!
# What is the best way to shorten the lines in this method so it doesn't exceed the 80 maximum characters to a line?

# Further Exploration:
def greetings(name, status)
  name = name.join(' ')
  title = status[:title]
  "Hello, #{name}! Nice to have a #{status[:title]} #{status[:occupation]} around."
end

# test:
p greetings(%w[John Q Doe], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."

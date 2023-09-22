# frozen_string_literal: true

# What will the following code print,
# and why?
# Don't run the code until you have tried to answer.

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# this is the same as:
# array1 = ('Moe' 'Larry' 'Curly' 'Shemp' 'Harpo' 'Chico' 'Groucho' 'Zeppo')
# reason: %w() is the same as ('string')

array2 = []
# this is the same as:
# reason:


array1.each { |value| array2 << value }
# this is the same as:
# reason:

array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# this is the same as:
# reason:

puts array2
# this is the same as:
# reason:

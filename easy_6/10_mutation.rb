# frozen_string_literal: true

# What will the following code print,
# and why?
# Don't run the code until you have tried to answer.

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# this is the same as:
# array1 = ('Moe' 'Larry' 'Curly' 'Shemp' 'Harpo' 'Chico' 'Groucho' 'Zeppo')
# reason: %w() is the same as ('string')

# array2 = []

# array1.each { |value| array2 << value }
# this is means:
# each element in the array1 is passed the { |value| array2 << value } block
# which contains: the result of appending the value block parameter to the array2 varible.
# the result is: array2 = ['Moe' 'Larry' 'Curly' 'Shemp' 'Harpo' 'Chico' 'Groucho' 'Zeppo']

# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# this means:
# each element in array1 is passed the { |value| value.upcase! if value.start_with?('C', 'S') } block
# which contains: the result of permanently transforming the value block parameter to upcase 
# if the value block parameter starts with the 'C' or 'S' string.
# the result is:
# array1 = ('Moe' 'Larry' 'CURLY' 'SHEMP' 'Harpo' 'CHICO' 'Groucho' 'Zeppo')
# array2 = ['Moe' 'Larry' 'CURLY' 'SHEMP' 'Harpo' 'CHICO' 'Groucho' 'Zeppo']

# puts array2
# the result is:
# 'Moe'
# 'Larry'
# 'CURLY'
# 'SHEMP'
# 'Harpo'
# 'CHICO'
# 'Groucho'
# 'Zeppo'

# Further Exploration

# How can this feature of ruby get you in trouble? 
# When you pass an object to a method and that method mutates the object,
# it can lead to unexpected side effects outside of that method.
# if multiple objects or data structures share references to the same mutable objects,
# changing the object in one place will affect it everywhere.
# if you're caching objects and those objects get mutated elsewhere in your code,
# your cache can end up with incorrect or outdated data.
# data corruption can occur in multi-threaded applications,
# if multiple threads are mutating shared objects without proper synchronization.
# unintended mutations can cause bugs in different parts of the program which can be difficult to find.
# arrays can be hash keys and if they are mutated it can cause bugs or make the values inaccessible.

# How can you avoid it?
# use caution when mutating objects that shared or passed around in your code.
# consider using frozen objects such as frozen_string_literal: true or the freeze method to prevent mutation.
# only use ! mutating versions of methods when you want to change the original object.
# use dup or clone to create a copy of the object for complex structures or when passing objects to methods
# where mutation is possible.
# remember that modifying an object and reassigning a reference are different.

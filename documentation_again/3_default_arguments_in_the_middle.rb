# frozen_string_literal: true

# Description of Exercise:
# Consider the following method and a call to that method:

def my_method(aaa, d, b = 2, ccc = 3)
  p [aaa, b, ccc, d]
end

my_method(4, 5, 6)

# Description of Exercise:
# Use the ruby documentation to determine what this code will print.

# output:
# [4, 5, 3, 6]

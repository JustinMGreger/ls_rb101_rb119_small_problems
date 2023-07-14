# frozen_string_literal: true

def is_odd?(integer)
  integer.remainder(2) == 1
end

tests:             original output of the code using integer % 2 == 1 
p is_odd?(2)    # => false
p is_odd?(5)    # => true
p is_odd?(-17)  # => true
p is_odd?(-8)   # => false
p is_odd?(0)    # => false
p is_odd?(7)    # => true

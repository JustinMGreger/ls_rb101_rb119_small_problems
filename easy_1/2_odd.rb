
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

The output of which are:
puts is_odd?(2) == false same output of the code using integer % 2 == 1
puts is_odd?(5) == true same output of the code using integer % 2 == 1 
puts is_odd?(-17) == false difference detected the original output of the code using integer % 2 == 1 was true.
puts is_odd?(-8) == false same output of the code using integer % 2 == 1 
puts is_odd?(0) == false same output of the code using integer % 2 == 1 
puts is_odd?(7) == true same output of the code using integer % 2 == 1 

Explantion:
the remainder(2) method being called on -17 has a remainder of -1.
-1 is not equal to 1 which is why it returns false.
the % method returns 1 on -17 % 2.
1 is equal to 1 which is why it returns true.
the way the % method and the remainder method are programmed are why they return different answers.

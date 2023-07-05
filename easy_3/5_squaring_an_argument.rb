
defmultiply(arg_1, arg_2)
  arg_1 * arg_2
end

defsquare(number)
  multiply(number, number)
end

p square(5) == 25
p square(-8) == 64


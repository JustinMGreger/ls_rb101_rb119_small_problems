write a method that computes the square of its 
argument (the square is the result of multiplying a number by itself).

def multiply(arg_1, arg_2)
  arg_1 * arg_2
end

def square(number)
  multiply(arg_1, arg_2)
end

square(5) == 25
square(-8) == 64
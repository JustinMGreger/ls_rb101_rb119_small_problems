Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its 
argument (the square is the result of multiplying a number by itself).

Example:

def multiply(arg_1, arg_2)
  arg_1 * arg_2
end

def square(number)
  multiply(number, number)
end

square(5) == 25
square(-8) == 64
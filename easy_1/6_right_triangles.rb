=begin
Description of Exercise:
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n 
stars. 
The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the 
triangle, and the other end at the upper-right.

Examples:
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).

PEDAC stands for “[Understand the] Problem, 
Identify expected input: a positive integer, n, as an argument

and output: displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in
the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

Make the requirements explicit Identify rules:
Description of Exercise:
Write a method that takes a positive integer, n, as an argument, 
and displays a right triangle whose sides each have n stars. 
The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the 
triangle, and the other end at the upper-right.

Mental model of the problem (optional):
Description of Exercise:
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n 
stars. 
The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the 
triangle, and the other end at the upper-right.

Examples:
triangle(5)     this is the method name.

    *            1 star  * is 5 spaces to the right.
   **            2 stars  * is 5 spaces to the right. * is 4 spaces to the right.
  ***            3 stars  * is 5 spaces to the right. * is 4 spaces to the right. * is 3 spaces to the right.
 ****            4 stars  * is 5 spaces to the right. * is 4 spaces to the right. * is 3 spaces to the right. * is 2 spaces to the right. 
*****            5 stars  * is 5 spaces to the right. * is 4 spaces to the right. * is 3 spaces to the right. * is 2 spaces to the right. * is 1 space to the right.
12345

Syntax so far:
def triangle(n)
  n is the number of lines
  n is the number of * printed.
end
somehow the first * is n spaces to the right this mean it is r justified.


triangle(9)

        * 1 star * is 9 spaces to the right. 
       ** 2 stars * is 9 spaces to the right. * is 8 spaces to the right.
      *** 3 stars * is 9 spaces to the right. * is 8 spaces to the right. * is 7 spaces to the right.
     **** 4 stars * is 9 spaces to the right. * is 8 spaces to the right. * is 7 spaces to the right. * is 6 spaces to the right.
    ***** 5 stars * is 9 spaces to the right. * is 8 spaces to the right. * is 7 spaces to the right. * is 6 spaces to the right. * is 5 spaces to the right.
   ****** 6 stars * is 9 spaces to the right. * is 8 spaces to the right. * is 7 spaces to the right. * is 6 spaces to the right. * is 5 spaces to the right. * is 4 spaces to the right.
  ******* 7 stars * is 9 spaces to the right. * is 8 spaces to the right. * is 7 spaces to the right. * is 6 spaces to the right. * is 5 spaces to the right. * is 4 spaces to the right. * is 3 spaces to the right.
 ******** 8 stars * is 9 spaces to the right. * is 8 spaces to the right. * is 7 spaces to the right. * is 6 spaces to the right. * is 5 spaces to the right. * is 4 spaces to the right. * is 3 spaces to the right. * is 2 spaces to the right.
********* 9 stars * is 9 spaces to the right. * is 8 spaces to the right. * is 7 spaces to the right. * is 6 spaces to the right. * is 5 spaces to the right. * is 4 spaces to the right. * is 3 spaces to the right. * is 2 spaces to the right. * is 1 spaces to the right.
123456789 

Examples / Test Cases, Validate understanding of the problem:
the method when passed the arguments 5 & 9 respectively have to have this output of the solution does not solve the 
problem.

test:
triangle(5)

output:

    *
   **
  ***
 ****
*****

test:
triangle(9)

output:

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

Data Structure, How we represent data that we will work with when converting the input to output:
It looks like it will be strings.

Algorithm, Steps for converting input to output:

1. the triangle method accepts the positive integer n as an argument.
2. the triangle method displays a right triangle whose sides each have n stars.
3. the hypotenuse of the triangle should have one end at the lower-left of the triangle, and the other end at the upper-right.

and Code.” Implementation of Algorithm:

Syntax of Solution:
def triangle(n) 
  n.times do |i|
    puts ('*' * (i + 1)).rjust(n)
  end
end

test:
triangle(5)

test output:

    *
   **
  ***
 ****
*****

result:
    *
   **
  ***
 ****
*****

Success.

test:
triangle(9)

test output:

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

result:
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

Success.

Explanation of Syntax of Solution:
Syntax:
def triangle(n) 

Explanation:
def means definition.
triangle is the method.
(n) is the parameter.
this means:
the triangle method accepts the (n) parameter and is defined as the following:

Syntax:
  n.times do |i|

Explanation:
n is the parameter.
.times takes a integer and a block and runs the block as many times as the integer it was called on.
do means open the block.
|i| is the block parameter which recieves a value each time a block is called.
this means:
run the block of code n parameter times.

Syntax:
    puts ('*' * (i + 1)).rjust(n)
Explanation:
puts is put s which is put string which is print to the screen the string.
('*' * (i + 1)) is the string passed to .rjust.
'*' is a star string.
* means multiplication.
(i + 1) is what is multiplied by the '*' string.
i is the block parameter which recieves a value each time a block is called.
+ means addition.
1 is a integer.
.rjust takes a string and padds it with a specified character which defaults to whitespace.
(n) is how many specified characters which defaults to whitespace to padd .rjust
n is the parameter.
this means:    
print to the screen the result of: the .rjust method taking the ('*' * (i + 1)) string which contains the result of: the
'*' star string multiplied by (i + 1) which contains: the result of adding 1 to the i block parameter which recieves a 
value each time a block is called and padds it with the n parameter amount of whitespace.

Syntax:
  end

Explanation:
this is the last line in the .times method that is everything after this line is outside of the .times method.

Syntax:
end

Explanation:
this is the last line of the triangle method that is everything after this line is outside of the triangle method.

compilation of this means:
the triangle method accepts the (n) parameter and is defined as the following:
run the block of code n parameter times.
print to the screen the result of: the .rjust method taking the ('*' * (i + 1)) string which contains the result of: the
'*' star string multiplied by (i + 1) which contains: the result of adding 1 to the i block parameter which recieves a 
value each time a block is called and padds it with the n parameter amount of whitespace.
this is the last line in the .times method that is everything after this line is outside of the .times method.
this is the last line of the triangle method that is everything after this line is outside of the triangle method.



def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

# Further Exploration:
# Try modifying your solution so it prints the triangle upside down from its current orientation.

def triangle(num)
  spaces = 0
  stars = num

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end
 
=end

# Further Exploration:
# Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.

def triangle()
  puts "How many stars do you want?"
  num = gets.to_i

  puts "What corner do you want the triangle to be in :top_right, :top_left, :bottom_right, :bottom_left?"
  corner = gets.strip.to_sym

  num.times do |n|
    case corner
    when :top_right
      spaces = num - n - 1
      stars = n + 1
    when :top_left
      spaces = 0
      stars = n + 1
    when :bottom_right
      spaces = n
      stars = num - n
    when :bottom_left
      spaces = 0
      stars = num - n
    else
      puts "Invalid corner!"
      return
    end
    puts (' ' * spaces) + ('*' * stars)
  end
end

triangle()

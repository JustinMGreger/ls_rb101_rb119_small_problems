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


def triangle(n) 
puts '*' * (something).rjust(n)
3. the hypotenuse of the triangle should have one end at the lower-left of the triangle, and the other end at the upper-right.


test:
triangle(5)

output:

    *
   **
  ***
 ****
*****

result:

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

result:

=end
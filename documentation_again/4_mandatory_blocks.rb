=begin

Description of Exercise:
The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. 
Assume you have the following code:

Initial Given Syntax:
a = [1, 4, 8, 11, 15, 19]

Explanation of Initial Given Syntax:
a is a variable.
= means assignment.
[1, 4, 8, 11, 15, 19] is a array of integer elements.
this means: 
the variable a is assigned the [1, 4, 8, 11, 15, 19] array of integer elements.

Description of Exercise:
How would you search this Array to find the first element whose value exceeds 8?

Syntax of Solution:
a = [1, 4, 8, 11, 15, 19]
value = a.bsearch { |element| element > 8 }
puts value

Explanaiton of Syntax of Solution:

Syntax:
a = [1, 4, 8, 11, 15, 19]

Explanation:
a is a variable.
= means assignment.
[1, 4, 8, 11, 15, 19] is a array of integer elements.
this means: 
the variable a is assigned the [1, 4, 8, 11, 15, 19] array of integer elements.

Syntax:
value = a.bsearch { |element| element > 8 }

Explanation:
value is a variable.
= means assignment.
a is a variable.
= means assignment.
[1, 4, 8, 11, 15, 19] is a array of integer elements.
this means: 
the variable a is assigned the [1, 4, 8, 11, 15, 19] array of integer elements.
.bsearch method is binary searches for a specific element in a array by comparing it with the middle element of the array
if the specific element does not equal the middle element then the half of the array that the specific element cannot be
in is discarded and the search continues in the remaining half by comparing the specific element to the middle element
this is repeated until the specific element is found or the specific element is not in the array.
{ |element| element > 8 } is the block of code.
element represents the elements in the array.
element represents the elements in the array.
> is greater than.
8 is a integer.
this means:
the variable value is assigned the binary search result of element greater than the integer 8 in the variable a which is 
assigned the variable a which is assigned the [1, 4, 8, 11, 15, 19] array of integer elements where the binary search 
method searches for a specific element in a array by comparing it with the middle element of the array if the specific 
element does not equal the middle element then the half of the array that the specific element cannot be in is discarded and the 
search continues in the remaining half by comparing the specific element to the middle element this is repeated until the
specific element is found or the specific element is not in the array.

Syntax:
puts value

Explanation:
puts means put s which is put string which means print to the screen the string.
value is a variable.
= means assignment.
a is a variable.
= means assignment.
[1, 4, 8, 11, 15, 19] is a array of integer elements.
this means: 
the variable a is assigned the [1, 4, 8, 11, 15, 19] array of integer elements.
.bsearch method is binary searches for a specific element in a array by comparing it with the middle element of the array
if the specific element does not equal the middle element then the half of the array that the specific element cannot be
in is discarded and the search continues in the remaining half by comparing the specific element to the middle element
this is repeated until the specific element is found or the specific element is not in the array.
{ |element| element > 8 } is the block of code.
element represents the elements in the array.
element represents the elements in the array.
> is greater than.
8 is a integer.
this means:
the variable value is assigned the binary search result of element greater than the integer 8 in the variable a which is 
assigned the variable a which is assigned the [1, 4, 8, 11, 15, 19] array of integer elements where the binary search 
method searches for a specific element in a array by comparing it with the middle element of the array if the specific 
element does not equal the middle element then the half of the array that the specific element cannot be in is discarded and the 
search continues in the remaining half by comparing the specific element to the middle element this is repeated until the
specific element is found or the specific element is not in the array.
this means:
print to the screen the variable value which is assigned the binary search result of element greater than the integer 8 in 
the variable a which is assigned the variable a which is assigned the [1, 4, 8, 11, 15, 19] array of integer elements 
where the binary search method searches for a specific element in a array by comparing it with the middle element of the 
array if the specific element does not equal the middle element then the half of the array that the specific element 
cannot be in is discarded and the search continues in the remaining half by comparing the specific element to the middle 
element this is repeated until the specific element is found or the specific element is not in the array.

=end
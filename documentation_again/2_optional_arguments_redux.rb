# frozen_string_literal: true

# Description of Exercise:
# Assume you have the following code:
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

What will each of the 4 puts statements print?

Explanaiton of Initial Given Syntax:

Syntax:
require 'date'

Explanation:
require means search for a file and if found then read and execute the file.
'' is a string representing the name of the file.
date is the name of a file.
this means:
search for the file named date and if found then read and execute the date file.

Syntax:
puts Date.civil

Explanation:
puts means put s which is put string which means print to the screen the string.
Date is a class that provides methods for storing and manipulating calendar dates.
.civil is a Date class method that creates a new Date object and with no arguments given it will return the date for 
January 1, -4712.
this means:
print to the screen the result of creating a new Date object which is -4712-01-01.
the result of which is:
-4712-01-01

Syntax:
puts Date.civil(2016)

Explanation:
puts means put s which is put string which means print to the screen the string.
Date is a class that provides methods for storing and manipulating calendar dates.
.civil is a Date class method that creates a new Date object and with no arguments given it will return the date for 
January 1, -4712.
(2016) is an integer argument representing the year 2016.
this means:
print to the screen the result of creating a new Date object which accepts the integer argument (2016).
the result of which is:
2016-01-01

Syntax:
puts Date.civil(2016, 5)

Explanation:
puts means put s which is put string which means print to the screen the string.
Date is a class that provides methods for storing and manipulating calendar dates.
.civil is a Date class method that creates a new Date object and with no arguments given it will return the date for 
January 1, -4712.
(2016, 5) are integer argument representing the year 2016 and the month 5 that is May, 2016.
this means:
print to the screen the result of creating a new Date object which accepts the integer arguments (2016, 5).
the result of which is:
2016-05-01

Syntax:
puts Date.civil(2016, 5, 13)

Explanation:
puts means put s which is put string which means print to the screen the string.
Date is a class that provides methods for storing and manipulating calendar dates.
.civil is a Date class method that creates a new Date object and with no arguments given it will return the date for
January 1, -4712.
(2016, 5, 13) are integer argument representing the year 2016, the month 5, and the day 13 that is May 13, 2016.
this means:
print to the screen the result of creating a new Date object which accepts the integer arguments (2016, 5, 13).
the result of which is:
2016-05-13

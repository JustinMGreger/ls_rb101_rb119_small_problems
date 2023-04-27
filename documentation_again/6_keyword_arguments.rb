=begin

Description of Exercise:
What does this code print?

Syntax:
5.step(to: 10, by: 3) { |value| puts value }

Explanation:
5 is a integer.
.step method is used to iterate over a range of numbers with a specific step value which follows the syntax:
start_value.step(end_value, step_value) { |current_value| # code to be executed }
to: means the exclusive limit of the range.
10 is a integer.
by: specifies the step increment.
3 is a integer.
{ |value| puts value } is a block of code that means for value print value to the screen.
this means:
print to the screen the integer 5 up to and excluding the integer 10 by 3.
the output of which is:
5
8

=end
Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

Examples:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1


Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. 
For similar reasons, the return value for our fourth example doesn't have any leading zeros.


PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
PEDAC stands for “[Understand the] Problem, 
Identify expected input: 
reversed_number(12345)
and output:
54321

Make the requirements explicit Identify rules:
Write a method that takes a positive integer as an argument and returns that number with its digits reversed.
Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. 
For similar reasons, the return value for our fourth example doesn't have any leading zeros.

Mental model of the problem (optional):

def reversed_number(12345)
  accepts parameter in integer form
  breaks parameter into individual characters
  then reverses the individual character order
  possibly then merges the individual characters into a string 
  then puts to the screen the result.
  end  
  and output:
  54321
  

  Examples / Test Cases, Validate understanding of the problem:
  
  reversed_number(12345) == 54321
  reversed_number(12213) == 31221
  reversed_number(456) == 654
  reversed_number(12000) == 21 # No leading zeros in return value!
  reversed_number(12003) == 30021
  reversed_number(1) == 1
  
  If the results are the same as the above then the understanding is correct.
  

  Data Structure, How we represent data that we will work with when converting the input to output:
  strings or integers
  

  Algorithm, Steps for converting input to output:
  accepts parameter in integer form
  breaks parameter into individual characters
  then reverses the individual character order
  possibly then merges the individual characters into a string 
  then puts to the screen the result.

  and Code.” Implementation of Algorithm:
  
  Input:
  12345
  
  def reversed_number(num)
    puts num.to_s.split('').reverse.join.chomp
  end
  
  reversed_number(12345)
  
  Expected output:
  54321
  
  Actual output:
  54321
  
  Result:
  success.
  
  reversed_number(12213)
  
  Expected output:
  31221
  
  Actual output:
  31221
  
  Result:
  success.
  
  reversed_number(456) 
  
  Expected output:
  654
  
  Actual output:
  654
  
  Result:
  success.
  
  reversed_number(12000) == 21 # No leading zeros in return value!

  Expected output:
  
  
  Actual output:
  
  
  Result:

  reversed_number(12003) == 30021

  Expected output:
  
  
  Actual output:
  
  
  Result:

  reversed_number(1) == 1

  Expected output:
  
  
  Actual output:
  
  
  Result:
  
  
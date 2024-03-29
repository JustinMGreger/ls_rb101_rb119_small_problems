# frozen_string_literal: true

# A stack is a list of values that grows and shrinks dynamically.
# In ruby, a stack is easily implemented as an Array that just uses the #push and #pop methods.

# A stack-and-register programming language is a language that uses a stack of values.
# Each operation in the language operates on a register, which can be thought of as the current value.
# The register is not part of the stack.
# Operations that require two values pop the topmost item from the stack
# (that is, the operation removes the most recently pushed value from the stack),
# perform the operation using the popped value and the register value, and then store the result back in the register.

# Consider a MULT operation in a stack-and-register language.
# It multiplies the stack value with the register value,
# removes the value from the stack, and then stores the result back in the register.
# Thus, if we start with a stack of 3 6 4 (where 4 is the topmost item in the stack),
# and a register value of 7,
# then the MULT operation will transform things to 3 6 on the stack (the 4 is removed),
# and the result of the multiplication, 28, is left in the register.
# If we do another MULT at this point,
# then the stack is transformed to 3,
# and the register is left with the value 168.

# Write a method that implements a miniature stack-and-register-based programming language
# that has the following commands:

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value,
# storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value
# All operations are integer operations (which is only important with DIV and MOD).

# Programs will be supplied to your language method via a string passed in as an argument.
# Your program may assume that all programs are correct programs;
# that is, they won't do anything like try to pop a non-existent value from the stack,
# and they won't contain unknown tokens.

# You should initialize the register to 0.

# Examples:
# minilang('PRINT')
# 0
# minilang('5 PUSH 3 MULT PRINT')
# 15
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
# minilang('5 PUSH POP PRINT')
# 5
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
# minilang('-3 PUSH 5 SUB PRINT')
# 8
# minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a string.

# output:
# any integer values resulting from arithmetic operations on the stack and register that are
# printed to the console when the 'PRINT' command is executed.

# Make the requirements explicit Identify rules:
# Write a method that implements a miniature stack-and-register-based programming language
# that has the following commands:

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value,
# storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value
# All operations are integer operations (which is only important with DIV and MOD).
# Programs will be supplied to your language method via a string passed in as an argument.
# Your program may assume that all programs are correct programs;
# that is, they won't do anything like try to pop a non-existent value from the stack,
# and they won't contain unknown tokens.

# You should initialize the register to 0.

# Mental model of the problem (optional):
# def initialize_commands
# that has the following commands:
# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value,
# storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value
# All operations are integer operations (which is only important with DIV and MOD).
# Programs will be supplied to your language method via a string passed in as an argument.
# Your program may assume that all programs are correct programs;
# that is, they won't do anything like try to pop a non-existent value from the stack,
# and they won't contain unknown tokens.
# You should initialize the register to 0.

# Examples / Test Cases, Validate understanding of the problem:
# minilang('PRINT')
# 0
# minilang('5 PUSH 3 MULT PRINT')
# 15
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
# minilang('5 PUSH POP PRINT')
# 5
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
# minilang('-3 PUSH 5 SUB PRINT')
# 8
# minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# Data Structure, How we represent data that we will work with when converting the input to output:
# hash.

# Algorithm, Steps for converting input to output:
# the initialize_commands method is defined as the following:
# the hash contains: the 'PUSH' string key which is assigned the value that is the
# result of passing the :cmd_push symbol to the method method
# which is followed by the 'ADD' string key which is assigned the value that is the
# result of passing the :cmd_add symbol to the method method
# which is followed by the 'SUB' string key which is assigned the value that is
# the result of passing the :cmd_sub symbol to the method method
# which is followed by the 'MULT' string ke which is assigned the value that is
# the result of passing the :cmd_mult symbol to the method method
# which is followed by the 'DIV' string key which is assigned the value that is the
# result of passing the :cmd_div symbol to the method method
# which is followed by the 'MOD' string key which is assigned the value that is the
# result of passing the :cmd_mod symbol to the method method
# which is followed by the 'POP' string key which is assigned the value that is the
# result of passing the :cmd_pop symbol to the method method
# which is followed by the 'PRINT' string key which is assigned the value that
# is the result of passing the :cmd_print symbol to the method method and this is the
# end of the hash.
# this is the last line of the initialize_commands method.
# the cmd_push method accepts the (stack, register) parameters and is defined as the following:
# add the register parameter to the end of the stack parameter
# return the value assigned to the register parameter.
# this is the last line of the cmd_push method.
# the cmd_add method accepts the (stack, register) parameters and is defined as the following:
# return the result of concatenating the register parameter with the result of removing and
# returning the last element of the stack parameter.
# this is the last line of the cmd_add method.
# the cmd_sub method accepts the (stack, register) parameters and is defined as the following:
# return the result of subtracting the register parameter by the result of removing and
# returning the last element of the stack parameter.
# this is the last line of the cmd_sub method.
# the cmd_mult method accepts the (stack, register) parameter and is defined as the following:
# return the result of multiplying the register parameter by the result of removing and
# returning the last element of the stack parameter.
# this is the last line fo the cmd_mult method.
# the cmd_div method accepts the (stack, register) parameters and is defined as the following:
# return the result of dividing the register parameter by the result of removing and
# returning the last element of the stack parameter.
# this is the last line of the cmd_div method.
# the cmd_mod method accepts the (stack, register) parameters and is defined as the following:
# return the remainder of dividing the register parameter by the result of removing and
# returning the last element of the stack parameter.
# this is the last line of the cmd_mod method.
# the cmd_pop method accepts the (stack, _register) parameters and is defined as the following:
# return the result of removing and returning the last element of the stack parameter.
# this is the last line of the cmd_pop method.
# the cmd_print method accepts the (_stack, register) parameters and is defined as the following:
# print to the screen the value assigned to the register parameter
# return the value assigned to the register parameter.
# this is the last line of the cmd_print line.
# the process_command method accepts the (command, stack, register) parameters and is defined as the following:
# the commands varible is assigned the result of calling the initialize_commands method.
# if the command parameter matches the /\A-?\d+\z/ reg ex then the register parameter is assigned to
# the command parameter converted to integer form.
# elsif the commands varible contains the command parameter key then the register parameter is assigned
# the result of accessing the value from the commands hash using the command parameter as the key
# and pass the stack and register parameters to this.
# this is the last line of the if statement.
# return the value assigned to the register parameter.
# this is the last line of the process_command method.
# the minilang method accepts the (program) parameter and is defined as the following:
# the stack varible is assigned the [] Array.
# the register parameter is assigned the 0 integer.
# divide the program parameter into an array of substrings then execute the following
# code for each element:
# the register parameter is assigned to the result of passing command block parameter, the varible
# and the register parameter to the process_command method.
# this is the last line of the .each method.
# this is the last line of the minilang method.

# and Code. Implementation of Algorithm:
# def initialize_commands
#   {
#     'PUSH' => method(:cmd_push),
#     'ADD' => method(:cmd_add),
#     'SUB' => method(:cmd_sub),
#     'MULT' => method(:cmd_mult),
#     'DIV' => method(:cmd_div),
#     'MOD' => method(:cmd_mod),
#     'POP' => method(:cmd_pop),
#     'PRINT' => method(:cmd_print)
#   }
# end
# def cmd_push(stack, register)
#   stack.push(register)
#   register
# end
# def cmd_add(stack, register)
#   register + stack.pop
# end
# def cmd_sub(stack, register)
#   register - stack.pop
# end
# def cmd_mult(stack, register)
#   register * stack.pop
# end
# def cmd_div(stack, register)
#   register / stack.pop
# end
# def cmd_mod(stack, register)
#   register % stack.pop
# end
# def cmd_pop(stack, _register)
#   stack.pop
# end
# def cmd_print(_stack, register)
#   puts register
#   register
# end
# def process_command(command, stack, register)
#   commands = initialize_commands
#   if command.match?(/\A-?\d+\z/)
#     register = command.to_i
#   elsif commands.key?(command)
#     register = commands[command].call(stack, register)
#   end
#   register
# end
# def minilang(program)
#   stack = []
#   register = 0
#   program.split.each do |command|
#     register = process_command(command, stack, register)
#   end
# end

# LS Solution:
# def minilang(program)
#   stack = []
#   register = 0
#   program.split.each do |token|
#     case token
#     when 'ADD'   then register += stack.pop
#     when 'DIV'   then register /= stack.pop
#     when 'MULT'  then register *= stack.pop
#     when 'MOD'   then register %= stack.pop
#     when 'SUB'   then register -= stack.pop
#     when 'PUSH'  then stack.push(register)
#     when 'POP'   then register = stack.pop
#     when 'PRINT' then puts register
#     else              register = token.to_i
#     end
#   end
# end
# tests:
# minilang('PRINT')
# 0
# minilang('5 PUSH 3 MULT PRINT')
# 15
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
# minilang('5 PUSH POP PRINT')
# 5
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
# minilang('-3 PUSH 5 SUB PRINT')
# 8
# minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# Further Exploration

# Try writing a minilang program to evaluate and print the result of this expression:
# (3 + (4 * 5) - 7) / (5 % 3)
# The answer should be 8.
# This is trickier than it sounds!
# Note that we aren't asking you to modify the #minilang method;
# we want you to write a Minilang program that can be passed to #minilang and evaluated.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# the '3 4 5 * + 7 - 5 3 % /' string.

# output:
# the number result of the operation.

# Make the requirements explicit Identify rules:
# Try writing a minilang program to evaluate and print the result of this expression:
# (3 + (4 * 5) - 7) / (5 % 3)
# The answer should be 8.

# Mental model of the problem (optional):
# Try writing a minilang program to evaluate and print the result of this expression:
# (3 + (4 * 5) - 7) / (5 % 3)
# The answer should be 8.
# minilang
# stack = []
# MULT
# ADD
# SUB
# MOD
# DIV

# Examples / Test Cases, Validate understanding of the problem:
# minilang('(3 + (4 * 5) - 7) / (5 % 3)')

# Data Structure, How we represent data that we will work with when converting the input to output:
# Array.

# Algorithm, Steps for converting input to output:
# all string literals in the file are automatically frozen.
# Implement a simple stack-based mini language for arithmetic operations.
# the class MiniLang is defined as the following:
# the initialize method is defined as the following:
# the @stack instance varible is defined as the [] array.
# this is the last line of the initialize method.
# the run method accepts the (commands) parameters and is defined as the following:
# execute the following block of code to each of the elements in the commands parameter:
# if the command block parameter is a Integer then pass the command block parameter to the
# push method.
# elsif the %w[ADD SUB MULT DIV MOD] array includes the (command) block parameter
# then pass the downcase version of the command block parameter to the send mentod
# which executes the command block parameter method.
# else raise the "Invalid command: #{command}" string error message which contains:
# the Invalid command: string followed by the #{command} string interpolation
# which contains the command block parameter.
# this is the last line of the if statement.
# this is the last line of the .each method.
# print to the console the last element of the @stack insance varible array
# this is the last line of the run method.
# the following are hidden from external access:
# the push method accepts the (number) parameter and is defined as the following:
# append the number parameter to the end of the @stack instance varible.
# this is the last line of the push method.
# the add method is defined as the following:
# append the result of removing the last two elements from @stack instance varible
# and returns them as a new array then add all elements of the array into
# a single value to the end of the @stack instance varible.
# this is the last line of the add method.
# the sub method is defined as the following:
# append the result of removing the last two elements from the @stack instance
# varible and returns them as a new array then substract all elements of the array
# into a single value to the end of the @stack instance varible.
# this is the last line of the sub method.
# the mult method is defined as the following:
# append the result of removing the last two elements from the @stack instance
# varible and returns them as a new array then multiple all elements of the array
# into a single value to the end of the @stack instance varible.
# this is the last line of the mult method.
# the div method is defined as the following:
# append the result of removing the last two elements from the @stack instance
# varible and returns them as a new array then divide all elements of the array
# into a single value to the end of the @stack instance varible.
# this is the last line of the div method.
# the mod method is defined as the following:
# append the result of removing the last two elements from the @stack instance
# varible and returns them as a new array then return the remainder of
# dividing all elements of the array into a single value to the end of the
# @stack instance varible.
# this is the last line of the mod method.
# the print method is defined as the following:
# if the @stack instance varible is not empty print to the screen the last
# element in the @stack instance varible
# this is the last line of the print method.
# this is the last line of the class MiniLang.
# the minilang method accepts the (_expression) parameter and is defined as the following:
# the commands varible is assigned the array which contains the:
# integer 4, followed by the integer 5, followed by the 'MULT',
# string followed by the integer 3, followed by the 'ADD', string followed by the integer
# 7, followed by the 'SUB', string followed by the integer 5, followed by the integer 3,
# followed by the 'MOD', string followed by the 'DIV' string which closes the array.
# pass the commands varible to the .run method which is called on the result of creating a new MiniLang class
# this is the last line of the minilang method.

# and Code. Implementation of Algorithm:

# Implements a simple stack-based mini language for arithmetic operations.
class MiniLang
  def initialize
    @stack = []
  end

  def run(commands)
    commands.each do |command|
      if command.is_a?(Integer)
        push(command)
      elsif %w[ADD SUB MULT DIV MOD].include?(command)
        send(command.downcase)
      else
        raise "Invalid command: #{command}"
      end
    end
    self.print
  end

  private

  def push(number)
    @stack << number
  end

  def add
    @stack << (@stack.pop(2).reduce(:+))
  end

  def sub
    @stack << (@stack.pop(2).reduce(:-))
  end

  def mult
    @stack << (@stack.pop(2).reduce(:*))
  end

  def div
    @stack << (@stack.pop(2).reduce(:/))
  end

  def mod
    @stack << (@stack.pop(2).reduce(:%))
  end

  def print
    puts @stack.last unless @stack.empty?
  end
end

def minilang(_expression)
  commands = [
    4, 5, 'MULT',
    3, 'ADD',
    7, 'SUB',
    5, 3, 'MOD',
    'DIV'
  ]

  MiniLang.new.run(commands)
end

# Test:
minilang('(3 + (4 * 5) - 7) / (5 % 3)')

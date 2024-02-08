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


and Code. Implementation of Algorithm:

# tests:
minilang('PRINT')
# 0
minilang('5 PUSH 3 MULT PRINT')
# 15
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
minilang('5 PUSH POP PRINT')
# 5
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
minilang('-3 PUSH 5 SUB PRINT')
# 8
minilang('6 PUSH')
# (nothing printed; no PRINT commands)

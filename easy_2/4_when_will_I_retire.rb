Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

def prompt(message)
  puts message
end

def input
  gets.chomp.to_i
end

prompt 'What is your age?'
age = gets.chomp.to_i  
prompt 'At what age would you like to retire?' 
retire = gets.chomp.to_i  

prompt "It's 2016. You will retire in 2056."
prompt "You have only 40 years of work to go!"
end
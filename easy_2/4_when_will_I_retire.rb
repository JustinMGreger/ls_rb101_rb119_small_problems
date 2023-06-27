# frozen_string_literal: true

def prompt(message)
  puts message
end

def input
  gets.chomp.to_i
end

def years_of_work
  years_of_work = retirement_age - age
end

def retirement_year
  retirement_year = years_of_work + 2016
end

def retirement
  prompt 'What is your age?'
  age = input
  prompt 'At what age would you like to retire?' 
  retirement_age = input 
  prompt "It's 2016. You will retire in #{retirement_year}."
  prompt "You have only #{years_of_work} years of work to go!"
end

retirement

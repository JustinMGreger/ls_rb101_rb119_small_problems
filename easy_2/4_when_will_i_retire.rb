# frozen_string_literal: true

# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# LS solution:
# print 'What is your age? '
# current_age = gets.to_i

# print 'At what age would you like to retire? '
# retirement_age = gets.to_i

# current_year = Time.now.year
# work_years_to_go = retirement_age - current_age
# retirement_year = current_year + work_years_to_go

# puts "It's #{current_year}. You will retire in #{retirement_year}. "
# puts  "You have only #{work_years_to_go} years of work to go!"

def prompt(message)
  puts message
end

def input
  gets.chomp.to_i
end

def years_of_work(retirement_age, age)
  retirement_age - age
end

def retirement_year(work_years, current_year)
  work_years + current_year
end

def retirement
  prompt 'What is your age?'
  age = input
  prompt 'At what age would you like to retire?'
  retirement_age = input
  current_year = Time.now.year
  work_years = years_of_work(retirement_age, age)
  retirement_year = retirement_year(work_years, current_year)
  prompt "It's #{current_year}. You will retire in #{retirement_year}."
  prompt "You have only #{work_years} years of work to go!"
end

retirement

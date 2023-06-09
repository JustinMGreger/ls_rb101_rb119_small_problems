# frozen_string_literal: true

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

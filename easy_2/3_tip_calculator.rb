# frozen_string_literal: true

# Create a simple tip calculator.
# The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip and the total amount of the bill.

# Example:
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# LS solution:
# print 'What is the bill? '
# bill = gets.chomp
# bill = bill.to_f

# print 'What is the tip percentage? '
# percentage = gets.chomp
# percentage = percentage.to_f

# tip   = (bill * (percentage / 100)).round(2)
# total = (bill + tip).round(2)

# puts "The tip is $#{tip}"
# puts "The total is $#{total}"

# Further Exploration

# Our solution prints the results as $30.0 and $230.0 instead of the more usual $30.00 and $230.00. 
# Modify your solution so it always prints the results with 2 decimal places.

# Hint: You will likely need Kernel#format for this.

def prompt(message)
  puts message
end

def input
  gets.chomp.to_f
end

def calculate_tip(bill, tip_rate)
  (bill * tip_rate / 100).round(2)
end

def calculate_total(bill, tip)
  (tip + bill).round(2)
end

def display_results(tip, total)
  prompt "The tip is $#{format('%.2f', tip)}"
  prompt "The total is $#{format('%.2f', total)}"
end

def tip_calculator
  prompt 'What is the bill?'
  bill = input
  prompt 'What is the tip percentage?'
  tip_rate = input
  tip = calculate_tip(bill, tip_rate)
  total = calculate_total(bill, tip)
  display_results(tip, total)
end

tip_calculator

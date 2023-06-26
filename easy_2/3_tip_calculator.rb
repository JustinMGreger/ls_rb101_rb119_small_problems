# frozen_string_literal: true

def tip_calculator
  puts 'What is the bill?'
  bill = gets.chomp.to_f
  puts 'What is the tip percentage?'
  tip_rate = gets.chomp.to_f / 100
  tip = (bill * tip_rate).round(2)
  total = (tip + bill).round(2)
  puts "The tip is $#{tip}"
  puts "The total is $#{total}"
end

tip_calculator

Further Exploration

Our solution prints the results as $30.0 and $230.0 instead of the more usual $30.00 and $230.00. Modify your solution so it always prints the results with 2 decimal places.

Hint: You will likely need Kernel#format for this.
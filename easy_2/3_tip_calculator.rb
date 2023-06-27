# frozen_string_literal: true

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

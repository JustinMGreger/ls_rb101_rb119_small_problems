# frozen_string_literal: true

def prompt(message)
  puts message
end

def get_input
  gets.chomp.to_f
end

def calculate_tip(bill, tip_rate)
  (bill * tip_rate / 100).round(2)
end

def calculate_total(bill, tip)
  (tip + bill).round(2)
end

def tip_calculator()
  prompt 'What is the bill?'
  bill = get_input
  prompt 'What is the tip percentage?'
  tip_rate = get_input
  tip = calculate_tip(bill, tip_rate)
  total = calculate_total(bill, tip)
end

tip_calculator

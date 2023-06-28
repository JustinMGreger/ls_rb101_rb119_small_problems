# frozen_string_literal: true

def prompt(message)  
  puts message
end

def print_in_box(message)
  max_width = 76
  max_message_width = max_width - 4 

  words = message.split(' ')
  lines = ['']
  words.each do |word|
    while word.length > max_message_width
      lines[-1] += word.slice!(0..max_message_width-1) + ' '
      lines << '' if word.length > 0
    end
    if (lines[-1] + word + ' ').length > max_message_width
      lines << ''
    end
    lines[-1] += word + ' ' unless word.empty?
  end
  message = lines.map(&:strip).join("\n")

  max_line_length = [max_message_width, message.split("\n").map(&:length).max].min
  horizontal_rule = "+#{'-' * (max_line_length + 2)}+"
  empty_line = "|#{' ' * (max_line_length + 2)}|"

  prompt horizontal_rule
  puts empty_line
  message.split("\n").each { |line| puts "| #{line.ljust(max_line_length)} |" }
  puts empty_line
  puts horizontal_rule
end

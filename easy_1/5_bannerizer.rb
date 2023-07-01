# frozen_string_literal: true

def prompt(message)  
  puts message
end

def break_into_lines(message, max_message_width)
  words = message.split(' ')

end



def print_in_box(message)
  max_width = 76
  max_message_width = max_width - 4

  lines = ['']
  words.each do |word|
    while word.length > max_message_width
      lines[-1] += "#{word.slice!(0..max_message_width - 1)} "
      lines << '' if word.empty?
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
  prompt empty_line
  message.split("\n").each { |line| puts "| #{line.ljust(max_line_length)} |" }
  prompt empty_line
  prompt horizontal_rule
end

print_in_box

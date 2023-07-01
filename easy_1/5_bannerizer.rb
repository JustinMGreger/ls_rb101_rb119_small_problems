# frozen_string_literal: true

def prompt(message)
  puts message
end

def split_word(lines, word, max_message_width)
  while word.length > max_message_width
    lines[-1] += "#{word.slice!(0..max_message_width - 1)} "
    lines << '' if word.empty?
  end
  lines
end

def add_word_to_line(lines, word, max_message_width)
  (lines[-1] + word + ' ').length > max_message_width
    lines << ''
  end
  lines[-1] += word + ' ' unless word.empty?
  lines
end

def break_into_lines(message, max_message_width)
  words = message.split(' ')
  lines = ['']
  words.each do |word|
    lines = split_word(lines, word, max_message_width)
    lines = add_word_to_line(lines, word)
  end
  lines.map(&:strip)
end

def build_box(message, max_line_length)
  horizontal_rule = "+#{'-' * (max_line_length + 2)}+"
  empty_line = "|#{' ' * (max_line_length + 2)}|"

  prompt horizontal_rule
  prompt empty_line
  message.split("\n").each { |line| puts "| #{line.ljust(max_line_length)} |" }
  prompt empty_line
  prompt horizontal_rule
end


def print_in_box(message)

  max_width = 76
  max_message_width = max_width - 4

  broken_message = break_into_lines(message, max_message_width)

  max_line_length = [max_message_width, broken_message.join("\n").length].min

  build_box(broken_message.join("\n"), max_line_length)
end

print_in_box

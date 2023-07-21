# frozen_string_literal: true

# Write a method that will take a short line of text, and print it within a box.

# Example:
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.

# LS solution:
# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"
#
#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end

# Further Exploration

# Modify this method so it will truncate the message if it will be too wide to fit inside a
# standard terminal window (80 columns, including the sides of the box).
# For a real challenge, try word wrapping very long messages so they appear on multiple lines,
# but still within a box.

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
  lines << '' if "#{lines[-1]}#{word} ".length > max_message_width
  lines[-1] += "#{word} " unless word.empty?
  lines
end

def break_into_lines(message, max_message_width)
  words = message.split(' ')
  lines = ['']
  words.each do |word|
    lines = split_word(lines, word, max_message_width)
    lines = add_word_to_line(lines, word, max_message_width)
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

# Test:
print_in_box '!"#$%&\()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~;'

# result:
# +--------------------------------------------------------------------------+
# |                                                                          |
# | !"#$%&\()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefgh |
# | ijklmnopqrstuvwxyz{|}~;                                                  |
# |                                                                          |
# +--------------------------------------------------------------------------+

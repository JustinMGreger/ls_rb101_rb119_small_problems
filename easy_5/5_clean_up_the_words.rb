# frozen_string_literal: true

# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row,
# you should only have one space in the result (the result should never have consecutive spaces).

# my answer:
# def cleanup(string_parameter)
#   replaced_string = string_parameter.gsub(/[^a-zA-Z]/, ' ')
#   replaced_string.gsub(/\s+/, ' ')
# end

# LS Solution 1

# ALPHABET = ('a'..'z').to_a

# def cleanup(text)
#   clean_chars = []

#   text.chars.each do |char|
#     if ALPHABET.include?(char)
#       clean_chars << char
#     else
#       clean_chars << ' ' unless clean_chars.last == ' '
#     end
#   end

#   clean_chars.join
# end

# LS Solution 2
# def cleanup(text)
#   text.gsub(/[^a-z]/, ' ').squeeze(' ')
# end

# test:
p cleanup("---what's my +*& line?") == ' what s my line '

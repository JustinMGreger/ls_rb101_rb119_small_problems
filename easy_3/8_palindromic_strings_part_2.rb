# frozen_string_literal: true

def palindrome?(sequence)
  sequence.size.times.all? { |i| sequence[i] == sequence[-i - 1] }
end

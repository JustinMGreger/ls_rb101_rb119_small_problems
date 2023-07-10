# frozen_string_literal: true



def century(year)
  century_number = calculate_century_number(year)
  suffix = calculate_century_suffix(century_number)
  return "#{century_number}#{suffix} Century"
end

def calculate_century_number(year)
  if year % 100 == 0
    year / 100
  else
    return year / 100 + 1
  end
end

def calculate_century_suffix(century)
  suffix = case century % 10
    when 1 then "st"
    when 2 then "nd"
    when 3 then "rd"
    else "th"
  end

  if [11, 12, 13].include?(century % 100)
    suffix = "th"
  end

  suffix
end

# Tests:
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

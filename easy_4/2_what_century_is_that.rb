# frozen_string_literal: true

def century(year)
  century_number = calculate_century_number(year)
  suffix = calculate_century_suffix(century_number)
  "#{century_number}#{suffix} Century"
end

def calculate_century_number(year)
  (year % 100).zero? ? year / 100 : year / 100 + 1
end

def calculate_century_suffix(century)
  suffix = case century % 10
           when 1 then 'st'
           when 2 then 'nd'
           when 3 then 'rd'
           else 'th'
           end

  if [11, 12, 13].include?(century % 100)
    suffix = 'th'
  end

  suffix
end

# Tests:
p century(2000) == '20th Century' # result: true
p century(2001) == '21st Century' # result: true
p century(1965) == '20th Century' # result: true
p century(256) == '3rd Century' # result: true
p century(5) == '1st Century' # result: true
p century(10_103) == '102nd Century' # result: true
p century(1052) == '11th Century' # result: true
p century(1127) == '12th Century' # result: true
p century(11_201) == '113th Century' # result: true

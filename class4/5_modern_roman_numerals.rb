#!/usr/bin/env ruby
#
# Section 9.5 on page 68
# 4 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer bewteen 1 and
# 3000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   modern_roman_numeral(9)
#
# should return
#
#   "IX"
#
# Hint: Run the program from the shell like this:
#
#   $ ruby 5_modern_roman_numerals.rb 9
#   IX

def modern_roman_numeral(num)
  # your solution here
  thousands = num / 1000
  hundreds = num % 1000 / 100
  tens = num % 100 / 10
  ones = num % 10
  roman_numeral = "M" * thousands
  if hundreds == 9
    roman_numeral += "CM"
  elsif hundreds == 4
    roman_numeral += "CD"
  else
    roman_numeral += "D" * (num % 1000 / 500)
    roman_numeral += "C" * (num % 500 / 100)
  end

  if tens == 9
    roman_numeral += "XC"
  elsif tens == 4
    roman_numeral += "XL"
  else
    roman_numeral += "L" * (num % 100 / 50)
    roman_numeral += "X" * (num % 50 / 10)
  end

  if ones == 9
    roman_numeral += "IX"
  elsif ones == 4
    roman_numeral += "IV"
  else
    roman_numeral += "V" * (num % 10 / 5)
    roman_numeral += "I" * (num % 5 / 1)
  end

  roman_numeral

end
input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 5_modern_roman_numerals [1-3000]"
   exit
end

puts modern_roman_numeral(input)

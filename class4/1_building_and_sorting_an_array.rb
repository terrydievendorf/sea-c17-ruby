#!/usr/bin/env ruby
#
# Section 8.3 on page 56
# 4 points
#
# Write the program we talked about at the beginning of this chapter, one that
# asks us to type as many words as we want (one word per line, continuing until
# we just press `Enter` on an empty line) and then repeats the words back to us
# in alphabetical order. Here's an example of how the program should behave:
#
# Give me some words, and I will sort them:
# banana
# apple
# cherry
#
# Sweet! Here they are, sorted:
# apple
# banana
# cherry
#
# Make sure to test your program thoroughly. For example:
#
# - Does hitting `Enter` on an empty line always exit your program?
# - Even on the first line?
# - And the second?
#
# Hint: There’s a lovely array method that will give you a sorted version of
# an array called `sort`. Use it!
puts "Give me some words, and I will sort them:"

words = []

loop do
  word = gets.chomp
  break if word == ""
  words.push(word)
end

puts "Sweet!  Here they are, sorted:"
puts words.sort

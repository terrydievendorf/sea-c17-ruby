#!/usr/bin/env ruby
#
# Section 8.3 on page 56
# 4 points
#
# Rewrite your table of contents program on page 32. Start the program with an
# array holding all of the information for your table of contents (chapter
# names, page numbers, and so on). Then print out the information from the array
# in a beautifully formatted table of contents like this:
#
#                 Table of Contents
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13

heading = 'Table of Contents'

chapters = [
  ['Getting Started', "page  1"],
  ['Numbers', "page  9"],
  ['Letters', "page 13"]
]

puts
puts heading.center(50)
puts

chapters.each_with_index do |chapter, index|
  chapter_name, right_side = chapter
  left_side = "Chapter #{index + 1}:  #{chapter_name}"

  puts left_side.ljust(30) + right_side.rjust(20)
end

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
chapters = [['Getting Started',1],['Numbers',9],['Letters',13]]
linewidth = 50

puts
puts heading.center linewidth
puts
chapters.each_with_index do |chapter_info, index|
  chapter_name, page_num = chapter_info
  chapter_index = index + 1
left_side = "Chapter #{chapter_index}: #{chapter_name}"
right_side = "page #{page_num}"
puts left_side.ljust(30) + right_side.rjust(20)
end

# Section 6.2 on page 32
# 4 points
# Here’s something for you to do in order to play around more with center,
# ljust, and rjust: write a program that will display a table of contents so
# that it looks like this:
#
#                 Table of Contents
#
# Chapter 1:  Getting Started                page  1
# Chapter 2:  Numbers                        page  9
# Chapter 3:  Letters                        page 13

# There are various ways to store the data, but this is the way I chose since we 
# haven't covered more sophisticated data structures yet.
heading = 'Table of Contents'
chapters = ['Chapter 1: Getting Started','Chapter 2: Numbers','Chapter 3: Letters']
pages = ['1','9','13'] 

# Assume TOC is in order so longest page number is the last element of pages
# Use maxpagenumberchars to ensure appropriate distance between word "page" and page number
maxpagenumberchars = pages.group_by(&:size).max[0]

# Find the longest Chapter title and multiply that by 2 to find the line width
linewidth = chapters.group_by(&:size).max[0] * 2

# Center the heading
puts heading.center linewidth

# Enumerate the chapters and format the output
chapters.each_with_index do |chapters,index|
  puts chapters.ljust(linewidth/2) + 'page '.rjust(linewidth/2) + pages[index].rjust(maxpagenumberchars)
end

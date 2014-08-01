#!/usr/bin/env ruby
#
# 4 points
#
# Modify the previous method with the following change:
#
#   grandfather_clock(str, &block)
#
#     Accepts a String and a block. Calls the block, passing in the string,
#     once for each hour that's passed today.
#
#     grandfather_clock("GONGGGGGGG!") do |sound|
#       puts sound
#     end
#
#     Output:
#
#     The hour is 2
#     GONGGGGGGG!
#     GONGGGGGGG!

# your code here

def grandfather_clock(str, &block)
  puts "The hour is #{Time.new.hour % 12}"
  (Time.new.hour % 12).times {yield(str)}
end

grandfather_clock("GONGGGGGGG!") do |sound|
  puts sound
end

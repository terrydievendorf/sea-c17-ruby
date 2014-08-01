#!/usr/bin/env ruby
#
# 4 points
#
# Write the following method:
#
#   Array#each_without_yolo(&block)
#
#     Iterates through an array, replacing all occurances of "YOLO" and "yolo"
#     with "Life is too short".
#
#     ["OMG", "YOLO"].each_without_yolo { |e| puts e }
#
#     Output:
#
#     OMG
#     Life is too short

# your code here

class Array
  def each_without_yolo(&block)
    index = 0
    while index < self.size
      if self[index].upcase == "YOLO"
        puts "Life is too short"
      else
        yield self[index]
      end
      index += 1
    end
  end

["OMG", "YOLO", "ROTFL", "yolo", "FTW"].each_without_yolo { |e| puts e }

# Section 7.5 on page 49
# 4 points
#
# Write a program that prints out the lyrics to that beloved classic,
# "99 Bottles of Beer on the Wall." Here's what the output should look like:
#
# 99 bottles of beer on the wall, 99 bottles of beer!
# Take one down, pass it around, 98 bottles of beer on the wall!
# 98 bottles of beer on the wall, 98 bottles of beer!
# Take one down, pass it around, 97 bottles of beer on the wall!
# ...
# 2 bottles of beer on the wall, 2 bottles of beer!
# Take one down, pass it around, 1 bottle of beer on the wall!
# 1 bottle of beer on the wall, 1 bottle of beer!
# Take one down, pass it around, no more bottles of beer on the wall!

original_bottle_count = 99
current_bottle_count = original_bottle_count
while current_bottle_count > 1
  puts "#{current_bottle_count} bottles of beer on the wall," +
    " #{current_bottle_count} bottles of beer!"
  puts "Take one down, pass it around, " + 
    "#{current_bottle_count-1}" 
  print current_bottle_count-1 == 1 ? " bottle" : " bottles" 
  puts " of beer on the wall!"
  current_bottle_count -= 1
end
puts "1 bottle of beer on the wall, 1 bottle of beer!\n" +
  "Take one down and pass it around, no more bottles of beer on the wall!"
puts "No more bottles of beer on the wall, no more bottles of beer!"
puts "Go to the store and buy some more, 99 bottles of beer on the wall!"

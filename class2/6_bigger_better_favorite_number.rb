# Section 5.6 on page 25
# 4 points
# Write a program that asks for a person’s favorite number. Have your program
# add 1 to the number, and then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)
puts "What is your favorite number"
favoriteNumber = gets.chomp
puts "Have you considered that " + (favoriteNumber.to_i + 1).to_s + " might be a bigger and better number?"

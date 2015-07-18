# Section 7.5 on page 49
# 4 points
#
# What if Grandma doesn’t want you to leave? When you shout BYE, she could
# pretend not to hear you. Change your previous program so that you have to
# shout BYE three times in a row. Make sure to test your program: if you shout
# BYE three times but not in a row, you should still be talking to Grandma.

puts "HUH?! SPEAK UP, SONNY! I CAN'T HEAR YOU!"

bye_count = 0

while bye_count < 3
  response = gets.chomp

  if response == "BYE"
    puts "DID YOU SAY SOMETHING, SONNY?"
    bye_count += 1
  else
    bye_count = 0

    if response == response.upcase
      random_year = rand(21) + 1930
      puts "NO, NOT SINCE #{random_year}!"
    else
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end
end

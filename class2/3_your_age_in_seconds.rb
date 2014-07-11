# Section 2.5 on page 12
# 4 points
# How many seconds old are you? (I’m not going to check your answer, so be as
# accurate — or not — as you want.)
# 60 seconds/minute times 60 minutes/hour times 24 hours/day times 365 days/year times 50 years 
puts "If you figure that I am exactly 50 years old, then I'm  " + (60 * 60 *24 *365 *50).to_s.reverse.gsub(/...(?=.)/,'\&,').reverse + " seconds old."
birthdate = Time.new(1963,9,26,7,26)
puts
puts "But, actually a bunch of time has passed since my birthday, so I'm actually older than that."
puts
puts "If we disregard that I'm actually older than when this application looked at the current time,then a more accurate representation of how old I am in seconds is: " +  (Time.now - birthdate).to_i.to_s.reverse.gsub(/...(?=.)/,'\&,').reverse  + "."

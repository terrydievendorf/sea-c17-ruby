# Section 2.5 on page 12
# 4 points
# How many minutes are in a decade?

# Use a regex to format the answer with commas
puts "60 minutes/hour times 24 hours/day times 365 days/year times 10 years is " + (60 * 24 *365 *10).to_s.reverse.gsub(/...(?=.)/,'\&,').reverse + " minutes per decade"

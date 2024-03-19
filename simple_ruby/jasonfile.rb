#create a kph to mph


#100 kph divided by 2 is 50, plus 10% of 100 is 60 mph.
# kph/2 = x
# mph = km/h ÷ 1.609344

print 'Enter speed in kph: '
jason = gets.chomp.to_f

mph = jason * 0.621371

puts "Ang takbo mo sa mph ay #{mph}"

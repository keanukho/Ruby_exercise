#Write a Ruby program that takes a temperature in Celsius as input, converts it to Fahrenheit, and prints the result.

#METHOD TYPE

def celsius_to_fahrenheit(celsius)
  celsius * 9/5 + 32
end

print 'Input a number: '
  celsius = gets.chomp.to_f
  fahrenheit = celsius_to_fahrenheit(celsius)

puts "Temperature in Fahrenheit: #{fahrenheit}°F"


# #SCRIPT TYPE

# print 'Input a celsius: '
# var = gets.chomp.to_f
# fahrenheit = var * 9/5 + 32
#
# puts "Temperature in Fahrenheit: #{fahrenheit}"

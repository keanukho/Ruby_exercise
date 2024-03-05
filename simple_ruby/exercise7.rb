#Write a Ruby program that takes a temperature in Celsius as input, converts it to Fahrenheit, and prints the result.

def celsius_to_fahrenheit(celsius)
  celsius * 9/5 + 32
end

celsius = 23
fahrenheit = celsius_to_fahrenheit(celsius)

puts "Temperature in Fahrenheit: #{fahrenheit}°F"
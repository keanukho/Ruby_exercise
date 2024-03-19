# Jeanne Keanu Echevarria
# Class Batch_6
# Develop a Ruby program that receives an array of daily weather conditions. For each day,
# output "Sunny" if the conditions include the keyword "sun," "Rainy" if it includes "rain," and "Cloudy" otherwise.

conditions = []
while true
  print'(press x to stop inputting score)Input weather conditions: '
  input = gets.chomp
  if input == 'x'
    break
  else
    conditions << input
  end
end

weather_forecast = conditions.map do |condition|
  if condition.downcase.include?('sun')
    'Sunny'
  elsif condition.downcase.include?('rain')
    'Rainy'
  else
    'Cloudy'
  end
end

puts "Weather forecast: #{weather_forecast.join(', ')}"
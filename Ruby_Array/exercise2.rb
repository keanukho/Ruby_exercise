  # Create a Ruby script that takes an array of daily temperatures.
  # For each day, output "High" if the temperature is above 35 degrees
  # Celsius, "Moderate" if it's between 20 and 35 degrees, and "Low" if it's below 20 degrees.

  #array of temp.
  # output "high" if the temp is above 35 deg
  # "moderate" if the temp is 20 >= <= 35
  # "low" if its below 20

  daily_temperature = []
  while true
    print'(press x to stop inputting score)Input temperature in Celsius: '
    input = gets.chomp

    if input == 'x'
      break
    else
      daily_temperature << input.to_i
    end
  end

  new_daily_temperature = daily_temperature.map do |temperature|
    if temperature > 35
      "High"
    elsif temperature > 20 && temperature <= 35
      "Moderate"
    else
      "Low"
    end
  end

  p new_daily_temperature
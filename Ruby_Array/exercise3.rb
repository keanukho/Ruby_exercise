# Jeanne Keanu Echevarria
# Class Batch_6
# Develop a Ruby program that receives an array of ages and counts how many
# individuals fall into each age group: "Child" (12 or younger), "Teenager" (13 to 19), and "Adult" (20 or older).







new_daily_temperature = daily_temperature.map do |temperature|
  if temperature > 35
    "High"
  elsif temperature > 20 && temperature <= 35
    "Moderate"
  else
    "Low"
  end
end

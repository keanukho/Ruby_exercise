# Jeanne Keanu Echevarria
# Class Batch_6
# Develop a Ruby program that receives an array of ages and counts how many
# individuals fall into each age group: "Child" (12 or younger), "Teenager" (13 to 19), and "Adult" (20 or older).


age_group = []
while true
  print'(press x to stop inputting score)Input age: '
  input = gets.chomp

  if input == 'x'
    break
  else
    age_group << input.to_i
  end
end




new_age_group = age_group.map do |age|
  if age > 35
    "adult"
  elsif age > 13 && age <= 19
    "Teenager"
  else
    "Child"
  end
end


p new_age_group
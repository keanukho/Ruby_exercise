# Jeanne Keanu Echevarria
# Class Batch_6
# Write a Ruby script that takes an array of integers. For each number,
# determine and store whether it's positive, negative, or zero.


numbers = []
while true
  print'(press x to stop inputting score)Input an Integers: '
  input = gets.chomp

  if input == 'x'
    break
  else
    numbers << input.to_i
  end
end

new_numbers = numbers.map do |integers|
  if integers > 35
    "Positive"
  elsif integers < 0
    "Negative"
  else
    "Zero"
  end
end

p new_numbers


# def classify_numbers(array)
# classifications = []
#
#   array.each do |num|
#     if num > 0
#       classifications << "positive"
#     elsif num < 0
#       classifications << "negative"
#     else
#       classifications << "zero"
#     end
#   end
#
#   classifications
# end
#
# # Example usage:
# numbers = [5, -3, 0, 10, -8]
# results = classify_numbers(numbers)
# puts "Classifications: #{results}"
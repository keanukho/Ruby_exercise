# Jeanne Keanu Echevarria
# Class Batch_6
# Write a Ruby script that takes an array of integers. For each number,
# determine and store whether it's positive, negative, or zero. If the number is positive,
# append "Positive" to the result; for negative numbers, append "Negative"; for zero, append "Zero."

def classify_numbers(number)
  if number > 0
    puts "#{number} is Positive"
  elsif number < 0
    puts "#{number} is Negative"
  else
    puts "#{number} is Zero"
  end
end

while true
  print "Enter an integer (type 'exit' to quit): "
  input = gets.chomp

  if input.downcase == 'x'
    puts "Exiting..."
    break
  end

  number = input.to_i
  classify_numbers(number)
end



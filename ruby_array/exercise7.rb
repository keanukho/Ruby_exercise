# Jeanne Keanu Echevarria
# Class Batch_6
# Create a Ruby script that takes an array of student exam results, represented as percentages.
# For each result, classify and store it as "Pass" if the percentage is 50 or above, and "Fail" otherwise.

exam_results = []
while true
  print'(press x to stop inputting score)Input result: '
  input = gets.chomp

  if input == 'x'
    break
  else
    exam_results << input.to_i
  end
end

new_exam_results = exam_results.map do |results|
  if results > 50
    "Pass"
  else
    "Fail"
  end
end


p new_exam_results
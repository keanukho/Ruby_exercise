# Jeanne Keanu Echevarria
# Class Batch_6
# Write a Ruby program that receives an array of student exam scores.
# For each score, classify and store the grade as "A" if the score is 90 or above,
# "B" if it's between 80 and 89, "C" for scores between 70 and 79, and "D" for scores below 70.


def score_a?(score)
  score >= 90 && score <= 99
end

student_scores = []

while true
  print '(press x to stop inputting score)Input student score: '
  input = gets.chomp

  if input == 'x'
    break
  else
    student_scores << input.to_i
  end
end

#student_scores = [85, 92, 75, 60, 78, 90, 99, 100]

new_student_scores = student_scores.map do |score|
  if score == 100
    "A+"
  elsif score_a?(score)
    "A"
  elsif score >= 80 && score <= 89
    "B"
  elsif score >= 70 && score <= 79
    "C"
  elsif score < 70
    "D"
  end
end


p new_student_scores








# def classify_grades(scores)
#
#
#   grades = []
#   while true
#     input = gets.chomp
#     break if input.empty?
#     grades << input.to_i
#   end
#   scores.each do |score|
#     if score >= 90
#       grades << "A"
#     elsif score >= 80
#       grades << "B"
#     elsif score >= 70
#       grades << "C"
#     else
#       grades << "D"
#     end
#   end
#
#   grades
# end
#
#
# # input_scores = gets.chomp.split.map(&:to_i)
#
# student_scores = [85, 92, 75, 60, 78]
# grades = classify_grades(student_scores)
# puts "Grades: #{grades}"

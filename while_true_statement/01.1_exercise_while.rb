# Jeanne Keanu Echevarria
# Class Batch_6
# Write a Ruby program that receives an array of student exam scores.

# For each score, classify and store the grade as "A" if the score is 90 or above,
# "B" if it's between 80 and 89, "C" for scores between 70 and 79, and "D" for scores below 70.


exam_scores = [85, 92, 78, 60, 75, 88, 97]
index = 0
exam_scores.length

while grades < exam_scores.length
  exam_score = exam_scores[index]

  if exam_score >= 90
    grades << "A"
  elsif exam_score >= 80
    grades << "B"
  elsif exam_score >= 70
    grades << "C"
  else
    grades << "D"
  end

  index += 1
end

puts
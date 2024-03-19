# Jeanne Keanu Echevarria
# Class Batch_6
# Write a Ruby program that receives an array of student exam scores.
# For each score, classify and store the grade as "A" if the score is 90 or above,
# "B" if it's between 80 and 89, "C" for scores between 70 and 79, and "D" for scores below 70.



# Array of student exam scores
exam_scores = [85, 92, 78, 60, 75, 88, 97]
grades = []  # Initialize an empty array to store the grades

# Iterate through each score in the array
index = 0
while index < exam_scores.size
  score = exam_scores[index]

  if score >= 90
    grades << "A"
  elsif score >= 80
    grades << "B"
  elsif score >= 70
    grades << "C"
  else
    grades << "D"
  end

  index += 1
end

# Print the resulting grades
puts "Exam grades: #{grades.join(', ')}"
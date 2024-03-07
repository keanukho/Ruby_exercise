# Write a Ruby program that receives an array of student exam scores.
# For each score, classify and store the grade as "A" if the score is 90 or above,
# "B" if it's between 80 and 89, "C" for scores between 70 and 79, and "D" for scores below 70.


def classify_grades(scores)


  grades = []
  while true
    input = gets.chomp
    break if input.empty?
    grades << input.to_i
  end
  scores.each do |score|
    if score >= 90
      grades << "A"
    elsif score >= 80
      grades << "B"
    elsif score >= 70
      grades << "C"
    else
      grades << "D"
    end
  end

  grades
end


# print "Enter student exam scores (separated by spaces): "
# input_scores = gets.chomp.split.map(&:to_i)

student_scores = [85, 92, 75, 60, 78]
grades = classify_grades(student_scores)
puts "Grades: #{grades}"

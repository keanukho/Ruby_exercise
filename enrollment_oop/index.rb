# Course  # attributes:  id, name
# Subject # attributes: id, name
# Teacher # attributes: id, name, birth_date, specialty, email
# Student # attributes: id, name, birth_date, course_id, parent
# Room    # attributes: id, name
# 1. For each class, create a class method that will generate 10 instances of course, subject, teacher and students, rooms
# 2. Create a script that will show all the students & courses data
# 3. allow the user to be able to pick the student and assign to a specific course
# 4. Create a new class SubjectStudents
# 5. SubjectStudents => attributes: subject_id, student_id, teacher_id, day (monday, tuesday)
# 6. Display the list of students, teachers and subjects
# 7. Allow the user to create SubjectStudents by choosing the following students, teachers and subjects

require_relative 'course'
require_relative 'subject'
require_relative 'room'
require_relative 'student'
require_relative 'teacher'
require_relative 'subject_students'

# Generate sample records for all classes
Course.generate_sample_records
Student.generate_sample_records
Teacher.generate_sample_records

# Display all students and courses
puts "Students:"
Student.all.each { |student| puts "#{student.id}: #{student.name}" }
puts "\nCourses:"
Course.get_course_records.each { |course| puts "#{course.id}: #{course.name}" }

# Allow user to pick a student and assign to a specific course
puts "\nAssign a student to a course:"
puts "Enter student ID:"
student_id = gets.chomp.to_i
puts "Enter course ID:"
course_id = gets.chomp

# Assign student to course
student = Student.all.find { |s| s.id == student_id }
student.course_id = course_id
puts "Student #{student.name} has been assigned to course #{course_id}."

# Display list of students, teachers, and subjects
puts "\nStudents:"
Student.all.each { |student| puts "#{student.id}: #{student.name}" }
puts "\nTeachers:"
Teacher.all.each { |teacher| puts "#{teacher.id}: #{teacher.name}" }
puts "\nSubjects:"
# Assuming subjects are not defined in the requirements, so not implemented.

# Allow user to create SubjectStudents
puts "\nCreate SubjectStudents:"
puts "Enter subject ID:"
subject_id = gets.chomp.to_i
puts "Enter student ID:"
student_id = gets.chomp.to_i
puts "Enter teacher ID:"
teacher_id = gets.chomp.to_i
puts "Enter day:"
day = gets.chomp

SubjectStudents.create(subject_id, student_id, teacher_id, day)
puts "SubjectStudent created successfully."

# Display SubjectStudents
puts "\nSubjectStudents:"
SubjectStudents.all.each do |subject_student|
  puts "Subject ID: #{subject_student.subject_id}, Student ID: #{subject_student.student_id}, Teacher ID: #{subject_student.teacher_id}, Day: #{subject_student.day}"
end

# def show_data
#   puts "Students:"
#   Student.all.each { |student| puts "#{student.id}: #{student.name}" }
#
#   puts "Courses:"
#   Course.all.each { |course| puts "#{course.id}: #{course.name}" }
# end
#
# def display_lists
#   puts "Students:"
#   Student.all.each { |student| puts "#{student.id}: #{student.name}" }
#
#   puts "Teachers:"
#   Teacher.all.each { |teacher| puts "#{teacher.id}: #{teacher.name}" }
#
#   puts "Subjects:"
#   Subject.all.each { |subject| puts "#{subject.id}: #{subject.name}" }
# end
#
# def create_subject_students(subject_id, student_id, teacher_id, day)
#   subject_student = SubjectStudents.new(subject_id, student_id, teacher_id, day)
#   @@subject_students << subject_student
# end


# def assign_student_to_course(student_id, course_id)
#   student = Student.find(student_id)
#   course = Course.find(course_id)
#
#   # Assign student to course
#   # Example: student.enroll(course)
# end

# puts Course
# puts Subject
# puts Room
# puts Student
# puts Teacher
# puts SubjectStudents




# 1. For each class, create a class method that will generate 10 instances of course, subject, teacher and students, rooms
# 2. Create a script that will show all the students & courses data
# 3. allow the user to be able to pick the student and assign to a specific course
# 4. Create a new class SubjectStudents
# 5. SubjectStudents => attributes: subject_id, student_id, teacher_id, day (monday, tuesday)
# 6. Display the list of students, teachers and subjects
# 7. Allow the user to create SubjectStudents by choosing the following students, teachers and subjects
 Course Subject Room Student Teacher SubjectStudents
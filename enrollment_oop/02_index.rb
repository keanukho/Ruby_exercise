# # class Course
# #   def self.generate_instances
# #     10.times do |i|
# #       Course.new("C#{i + 1}", "Course #{i + 1}")
# #     end
# #   end
# # end
# #
# # class Subject
# #   def self.generate_instances
# #     10.times do |i|
# #       Subject.new("S#{i + 1}", "Subject #{i + 1}")
# #     end
# #   end
# # end
# #
# # class Teacher
# #   def self.generate_instances
# #     10.times do |i|
# #       Teacher.new("T#{i + 1}", "Teacher #{i + 1}")
# #     end
# #   end
# # end
# #
# # class Student
# #   def self.generate_instances
# #     10.times do |i|
# #       Student.new("ST#{i + 1}", "Student #{i + 1}")
# #     end
# #   end
# # end
# #
# # class Room
# #   def self.generate_instances
# #     10.times do |i|
# #       Room.new("R#{i + 1}", "Room #{i + 1}")
# #     end
# #   end
# # end
#
#
# class Course
#   attr_accessor :id, :name
#   @@course_records = []
#
#   def initialize(id, name)
#     @id = id
#     @name = name
#   end
#
#   def self.generate_sample_records
#     courses_data = [
#       { id: '001', name: 'BSIT' },
#       { id: '002', name: 'PSYCH' },
#       { id: '003', name: 'ACCOUNTING' },
#       { id: '004', name: 'MECH' },
#       { id: '005', name: 'EDU' },
#       { id: '006', name: 'COMSCI' }
#     ]
#
#     courses_data.each do |course_data|
#       course = Course.new(course_data[:id], course_data[:name])
#       @@course_records << course
#     end
#   end
#
#   def self.get_course_records
#     @@course_records
#   end
# end
#
# class Student
#   attr_accessor :id, :name, :birth_date, :course_id, :parent
#   @@students = []
#
#   def initialize(id, name, birth_date, course_id, parent)
#     @id = id
#     @name = name
#     @birth_date = birth_date
#     @course_id = course_id
#     @parent = parent
#   end
#
#   def self.generate_sample_records
#     10.times do |i|
#       student = Student.new(i + 1, "Student #{i + 1}", "2000-01-01", "001", "Parent #{i + 1}")
#       @@students << student
#     end
#   end
#
#   def self.all
#     @@students
#   end
# end
#
# class Teacher
#   attr_accessor :id, :name, :birth_date, :specialty, :email
#   @@teachers = []
#
#   def initialize(id, name, birth_date, specialty, email)
#     @id = id
#     @name = name
#     @birth_date = birth_date
#     @specialty = specialty
#     @email = email
#   end
#
#   def self.generate_sample_records
#     10.times do |i|
#       teacher = Teacher.new(i + 1, "Teacher #{i + 1}", "1980-01-01", "Specialty #{i + 1}", "teacher#{i + 1}@school.com")
#       @@teachers << teacher
#     end
#   end
#
#   def self.all
#     @@teachers
#   end
# end
#
# class SubjectStudents
#   attr_accessor :subject_id, :student_id, :teacher_id, :day
#   @@subject_students = []
#
#   def initialize(subject_id, student_id, teacher_id, day)
#     @subject_id = subject_id
#     @student_id = student_id
#     @teacher_id = teacher_id
#     @day = day
#   end
#
#   def self.create(subject_id, student_id, teacher_id, day)
#     subject_student = SubjectStudents.new(subject_id, student_id, teacher_id, day)
#     @@subject_students << subject_student
#   end
#
#   def self.all
#     @@subject_students
#   end
# end
#
# # Generate sample records for all classes
# Course.generate_sample_records
# Student.generate_sample_records
# Teacher.generate_sample_records
#
# # Display all students and courses
# puts "Students:"
# Student.all.each { |student| puts "#{student.id}: #{student.name}" }
# puts "\nCourses:"
# Course.get_course_records.each { |course| puts "#{course.id}: #{course.name}" }
#
# # Allow user to pick a student and assign to a specific course
# puts "\nAssign a student to a course:"
# puts "Enter student ID:"
# student_id = gets.chomp.to_i
# puts "Enter course ID:"
# course_id = gets.chomp
#
# # Assign student to course
# student = Student.all.find { |s| s.id == student_id }
# student.course_id = course_id
# puts "Student #{student.name} has been assigned to course #{course_id}."
#
# # Display list of students, teachers, and subjects
# puts "\nStudents:"
# Student.all.each { |student| puts "#{student.id}: #{student.name}" }
# puts "\nTeachers:"
# Teacher.all.each { |teacher| puts "#{teacher.id}: #{teacher.name}" }
# puts "\nSubjects:"
# # Assuming subjects are not defined in the requirements, so not implemented.
#
# # Allow user to create SubjectStudents
# puts "\nCreate SubjectStudents:"
# puts "Enter subject ID:"
# subject_id = gets.chomp.to_i
# puts "Enter student ID:"
# student_id = gets.chomp.to_i
# puts "Enter teacher ID:"
# teacher_id = gets.chomp.to_i
# puts "Enter day:"
# day = gets.chomp
#
# SubjectStudents.create(subject_id, student_id, teacher_id, day)
# puts "SubjectStudent created successfully."
#
# # Display SubjectStudents
# puts "\nSubjectStudents:"
# SubjectStudents.all.each do |subject_student|
#   puts "Subject ID: #{subject_student.subject_id}, Student ID: #{subject_student.student_id}, Teacher ID: #{subject_student.teacher_id}, Day: #{subject_student.day}"
# end


# index.rb

# Add this code to index.rb

# Add this code to index.rb

# Require the necessary classes
# require_relative 'course'
# require_relative 'subject'
# require_relative 'room'
# require_relative 'student'
# require_relative 'teacher'
# require_relative 'subject_students'
#
# # Generate sample data
# Course.generate_samples
# Subject.generate_samples
# Room.generate_samples
# Student.generate_samples
# Teacher.generate_samples
#
# # Problem 1: Show all students and courses data
# def display_students_and_courses
#   puts "List of Students:"
#   Student.list.each { |student| puts "#{student.id}: #{student.name}" }
#
#   puts "\nList of Courses:"
#   Course.list.each { |course| puts "#{course.id}: #{course.name}" }
# end
#
# # Problem 2: Assign student to a specific course
# def assign_student_to_course(student_id, course_id)
#   student = Student.list.find { |s| s.id == student_id }
#   course = Course.list.find { |c| c.id == course_id }
#
#   if student && course
#     student.course_id = course_id
#     puts "#{student.name} has been assigned to #{course.name}."
#   else
#     puts "Invalid student ID or course ID."
#   end
# end
#
# # Problem 3: Create SubjectStudents
# def display_students_teachers_subjects
#   puts "List of Students:"
#   Student.list.each { |student| puts "#{student.id}: #{student.name}" }
#
#   puts "\nList of Teachers:"
#   Teacher.list.each { |teacher| puts "#{teacher.id}: #{teacher.name}" }
#
#   puts "\nList of Subjects:"
#   Subject.list.each { |subject| puts "#{subject.id}: #{subject.name}" }
# end
#
# def create_subject_student(subject_id, student_id, teacher_id, day)
#   subject = Subject.list.find { |s| s.id == subject_id }
#   student = Student.list.find { |s| s.id == student_id }
#   teacher = Teacher.list.find { |t| t.id == teacher_id }
#
#   if subject && student && teacher
#     subject_student = SubjectStudents.new(subject_id, student_id, teacher_id, day)
#     puts "Subject student created: #{subject_student}"
#   else
#     puts "Invalid subject ID, student ID, or teacher ID."
#   end
# end
#
# # Menu
# def menu
#   loop do
#     puts "\nMenu:"
#     puts "1. Show all students and courses data"
#     puts "2. Assign student to a specific course"
#     puts "3. Create SubjectStudents"
#     puts "4. Exit"
#     print "Enter your choice: "
#     choice = gets.chomp.to_i
#
#     case choice
#     when 1
#       display_students_and_courses
#     when 2
#       puts "Enter student ID:"
#       student_id = gets.chomp
#       puts "Enter course ID:"
#       course_id = gets.chomp
#       assign_student_to_course(student_id, course_id)
#     when 3
#       display_students_teachers_subjects
#       puts "Enter subject ID:"
#       subject_id = gets.chomp
#       puts "Enter student ID:"
#       student_id = gets.chomp
#       puts "Enter teacher ID:"
#       teacher_id = gets.chomp
#       puts "Enter day:"
#       day = gets.chomp
#       create_subject_student(subject_id, student_id, teacher_id, day)
#     when 4
#       puts "Exiting program..."
#       break
#     else
#       puts "Invalid choice. Please enter a number between 1 and 4."
#     end
#   end
# end

require_relative 'course'
require_relative 'subject'
require_relative 'room'
require_relative 'student'
require_relative 'teacher'
require_relative 'subject_students'
require 'date'

# Generate sample data
Course.generate_samples
Subject.generate_samples
Room.generate_samples
Student.generate_samples
Teacher.generate_samples

# Problem 1: Show all students and courses data
def display_students_and_courses
  puts "---------------------------"
  puts "List of Students:"
  Student.list.each { |student| puts "#{student.id}: #{student.name}" }
  puts "---------------------------"
  Course.list
end

# Problem 2: Assign student to a specific course
def assign_student_to_course(student_id, course_id)
  student = Student.list.find { |s| s.id == student_id }
  course = Course.list.find { |c| c.id == course_id }

  if student && course
    student.course_id = course_id
    puts "#{student.name} has been assigned to #{course.name}."
  else
    puts "Invalid student ID or course ID."
  end
end

# Problem 3: Create SubjectStudents
def display_students_teachers_subjects
  puts "---------------------------"
  puts "List of Students:"
  Student.list.each { |student| puts "#{student.id}: #{student.name}" }

  puts "---------------------------"
  puts "\nList of Teachers:"
  Teacher.list.each { |teacher| puts "#{teacher.id}: #{teacher.name}" }

  puts "---------------------------"
  puts "\nList of Subjects:"
  Subject.list.each { |subject| puts "#{subject.id}: #{subject.name}" }
end

def create_subject_student(subject_id, student_id, teacher_id, day)
  subject = Subject.list.find { |s| s.id == subject_id }
  student = Student.list.find { |s| s.id == student_id }
  teacher = Teacher.list.find { |t| t.id == teacher_id }

  if subject && student && teacher
    subject_student = SubjectStudents.new(subject_id, student_id, teacher_id, day)
    puts "Subject student created: #{subject_student}"

    # Additional code
    day_today = Date.today.strftime("%A %Y-%m-%d")
    puts "---------------------------"
    puts "Student: #{student_id} - #{student.name}"
    puts "Subject: #{subject_id} - #{subject.name}"
    puts "Teacher: #{teacher_id} - #{teacher.name}"
    puts "Enrollment Date: #{day_today}"
  else
    puts "Invalid subject ID, student ID, or teacher ID."
  end
end

# Menu
def menu
  loop do
    puts "\nMenu:"
    puts "1. Show all students and courses data"
    puts "2. Assign student to a specific course"
    puts "3. Create SubjectStudents"
    puts "4. Exit"
    print "Enter your choice: "
    choice = gets.chomp.to_i

    case choice
    when 1
      display_students_and_courses
      puts "---------------------------"
    when 2
      puts "Enter student ID:"
      student_id = gets.chomp
      puts "Enter course ID:"
      course_id = gets.chomp
      assign_student_to_course(student_id, course_id)
    when 3
      display_students_teachers_subjects
      puts "Enter subject ID:"
      subject_id = gets.chomp
      puts "Enter student ID:"
      student_id = gets.chomp
      puts "Enter teacher ID:"
      teacher_id = gets.chomp
      puts "Enter day (YYYY-MM-DD):"
      day = gets.chomp
      create_subject_student(subject_id, student_id, teacher_id, day)
    when 4
      puts "Exiting program..."
      exit
    else
      puts "Invalid choice. Please enter a number between 1 and 4."
    end
  end
end

# Start the menu
menu

# Save
# puts "Would you like to save? (y/n)"
# save_input = gets.chomp
# if save_input == 'y' || save_input == 'yes'
#   new_enrollment = SubjectStudents.new(subject_input_id, student_input_id, teacher_input_id, day)
#   new_enrollment.save
#   puts "Enrollment successful."
# else
#   puts "Enrollment unsuccessful. Please try again."
# end

# day = Date.today.strftime("%A %Y-%m-%d")
# puts "---------------------------"
# puts "Student: #{student_input_id} - #{student_input_name}"
# puts "Subject: #{subject_input_id} - #{subject_input_name}"
# puts "Teacher: #{teacher_input_id} - #{teacher_input_name}"
# puts "Enrollment Date: #{day}"
# Start the menu
menu



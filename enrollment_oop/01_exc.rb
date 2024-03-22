# class Student
#   attr_reader :id, :name
#   def initialize(id, name)
#     @id = id
#     @name = name
#   end
# end
#
# class Teacher
#   attr_reader :id, :name
#   def initialize(id, name)
#     @id = id
#     @name = name
#   end
# end
#
# class Course
#   attr_reader :id, :name, :students, :teacher
#   def initialize(id, name, students, teacher)
#     @id = id
#     @name = name
#     @students = students
#     @teacher = teacher
#   end
# end
#
# class SubjectStudents
#   attr_reader :subject_id, :student_id, :teacher_id, :day
#   def initialize(subject_id, student_id, teacher_id, day)
#     @subject_id = subject_id
#     @student_id = student_id
#     @teacher_id = teacher_id
#     @day = day
#   end
# end
# #
# # # Generate 10 instances of courses, subjects, teachers, and students
# # students = (1..10).map { |i| Student.new(i, "Student #{i}") }
# # teachers = (1..10).map { |i| Teacher.new(i, "Teacher #{i}") }
# # teacher = teachers.sample
# # courses = (1..10).map do |i|
# #   Course.new(i, "Course #{i}", students.sample(5), teacher)
# # end
# #
# # # Show all students & courses data
# # puts "Students:"
# # students.each { |student| puts "#{student.id}. #{student.name}" }
# # puts "\nCourses:"
# # courses.each do |course|
# #   puts "#{course.id}. #{course.name}"
# #   puts "   Teacher: #{course.teacher.name}"
# #   puts "   Students: #{course.students.map(&:name).join(', ')}"
# # end
# #
# # # Assign a student to a course
# # puts "\nAssign a student to a course (Enter student ID and course ID separated by space):"
# # student_id, course_id = gets.chomp.split.map(&:to_i)
# # course = courses.find { |c| c.id == course_id }
# # student = students.find { |s| s.id == student_id }
# # if course && student
# #   course.students << student
# #   puts "Student #{student.name} assigned to #{course.name}."
# # else
# #   puts "Invalid student or course ID."
# # end
# #
# # # Create a new SubjectStudents
# # puts "\nCreate SubjectStudents (Enter student ID, teacher ID, subject ID, and day separated by space):"
# # student_id, teacher_id, subject_id, day = gets.chomp.split.map(&:to_i)
# # subject_student = SubjectStudents.new(subject_id, student_id, teacher_id, day)
# # puts "SubjectStudent created successfully: #{subject_student.inspect}."
#
#
# i = 0
# while i < subjects.size
#   subjects.each do |subject|
#     Course.new(subject[0], subject[1])
#     i += 1
#   end
# end
#

class Student
  attr_accessor :first_name, :last_name, :email
  attr_reader :username

  @first_name
  @last_name
  @email
  @username
  @password

  # # This is the getter
  # def first_name=(name)
  #   @first_name = name
  # end
  #
  # # This is the setters
  # def first_name
  #   @first_name
  # end

  def set_username
    @username = "keanu_kho"
  end

  def to_s
    "First Name: #{@first_name}"
  end
end

keanu = Student.new
# puts keanu
keanu.first_name = "keanu"
keanu.last_name = "kho"
keanu.email = "keanukho@gmail.com"
# keanu.username = "keanu_kho"
keanu.set_username 

puts keanu.first_name
puts keanu.last_name
puts keanu.email
puts keanu.username


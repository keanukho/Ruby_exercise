class Room
  attr_accessor :id, :name
  @@room_records = []

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.list
    puts "List of Rooms:"
    @@room_records.each do |room|
      puts "#{room.id} - #{room.name}"
    end
  end

  def self.generate_samples
    rooms = [
      { id: '001', name: 'Room 101' },
      { id: '002', name: 'Room 202' },
      { id: '003', name: 'Room 303' },
      { id: '004', name: 'Room 404' },
      { id: '005', name: 'Room 505' },
      { id: '006', name: 'Room 606' },
      { id: '007', name: 'Room 707' },
      { id: '008', name: 'Room 808' },
      { id: '009', name: 'Room 909' },
      { id: '010', name: 'Room 1010' }
    ]

    rooms.each do |element|
      room = Room.new(element[:id], element[:name])
      @@room_records << room
    end
  end
end


rooms = [
  "Room 101",
  "Room 202",
  "Room 303",
  "Room 404",
  "Room 505",
  "Room 606",
  "Room 707",
  "Room 808",
  "Room 909",
  "Room 1010"
]

i = 0
j = 1
while i < rooms.size
  rooms.each do |course|
    Room.new(j, course)
    i += 1
    j += 1
  end
end



def show_data
  puts "Students:"
  Student.all.each { |student| puts "#{student.id}: #{student.name}" }

  puts "Courses:"
  Course.all.each { |course| puts "#{course.id}: #{course.name}" }
end

def display_lists
  puts "Students:"
  Student.all.each { |student| puts "#{student.id}: #{student.name}" }

  puts "Teachers:"
  Teacher.all.each { |teacher| puts "#{teacher.id}: #{teacher.name}" }

  puts "Subjects:"
  Subject.all.each { |subject| puts "#{subject.id}: #{subject.name}" }
end

def create_subject_students(subject_id, student_id, teacher_id, day)
  subject_student = SubjectStudents.new(subject_id, student_id, teacher_id, day)
  @@subject_students << subject_student
end
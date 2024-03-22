class Course
  attr_accessor :id, :name
  @@course_records = []

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.list
    puts "List of Courses:"
    @@course_records.each do |course|
      puts "#{course.id} - #{course.name}"
    end
  end

  def self.generate_samples
    courses = [
      { id: '01', name: 'Bachelor of Arts in Psychology' },
      { id: '02', name: 'Bachelor of Science in Computer Science' },
      { id: '03', name: 'Bachelor of Business Administration' },
      { id: '04', name: 'Bachelor of Science in Nursing' },
      { id: '05', name: 'Bachelor of Fine Arts in Graphic Design' },
      { id: '06', name: 'Bachelor of Science in Mechanical Engineering' },
      { id: '07', name: 'Bachelor of Arts in English Literature' },
      { id: '08', name: 'Bachelor of Science in Biology' },
      { id: '09', name: 'Bachelor of Architecture' },
      { id: '10', name: 'Bachelor of Arts in History' }
    ]
    courses.each do |element|
      course = Course.new(element[:id], element[:name])
      @@course_records << course
    end
  end
end



# Course.generate_samples
# Course.list

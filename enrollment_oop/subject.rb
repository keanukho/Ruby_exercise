class Subject
  attr_accessor :id, :name
  @@subject_records = []

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.list
    @@subject_records
  end

  def self.generate_samples
    subjects = [
      { id: 'Math', name: 'Mathematics' },
      { id: 'Eng', name: 'English' },
      { id: 'His', name: 'History' },
      { id: 'Bio', name: 'Biology' },
      { id: 'Chem', name: 'Chemistry' },
      { id: 'Phys', name: 'Physics' },
      { id: 'Art', name: 'Art' },
      { id: 'Mus', name: 'Music' },
      { id: 'PhysEd', name: 'Physical Education' }
    ]
    subjects.each do |element|
      subject = Subject.new(element[:id], element[:name])
      @@subject_records << subject
    end
  end
end
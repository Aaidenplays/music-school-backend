class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :name, :students, :instructor_requests
  belongs_to :user
  has_many :students
  has_many :instructor_requests

  def students
    self.object.students.map do |s|
    {
      id: s.id,
      name: s.name,
      students: s.instructors
    }
  end
  end

  def students
    self.object.instructor_requests.map do |s|
    {
      id: s.id,
      instructor: s.instructor,
      student: s.student
    }
  end
  end
end
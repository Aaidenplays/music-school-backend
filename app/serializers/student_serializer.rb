class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructors, :instructor_requests, :assignments, :videos
  belongs_to :user
  has_many :instructors
  has_many :instructor_requests

  def instructors
    self.object.instructors.map do |s|
    {
      id: s.id,
      name: s.name,
      students: s.students
    }
  end
  end

  def instructor_requests
    self.object.instructor_requests.map do |is|
      {
        id: is.id,
        instructor_id: is.instructor_id,
        status: is.status,
        student_id: is.student_id,
        instructor: is.instructor,
        student: is.student
      }
    end
  end
end

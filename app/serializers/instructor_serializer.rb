class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :name, :students, :instructor_requests, :assignments
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

  def assignments
    self.object.assignments.map do |is|
      {
        id: is.id,
        student_id: is.student_id,
        instructor_id: is.instructor_id,
        description: is.description,
        status: is.status,
        videos: is.videos
      }
    end
  end

end
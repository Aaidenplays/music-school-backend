class InstructorRequestSerializer < ActiveModel::Serializer
  attributes :id, :status, :student_id, :instructor_id, :student
  attributes :instructor
  # belongs_to :student
  # belongs_to :instructor

  def instructor
    i = self.object.instructor 
      # count = in.unit.to_i
      {
        id: i.id, 
        name: i.name, 
        user_id: i.user_id
      }
  end

  def student
    i = self.object.student
      # count = in.unit.to_i
      {
        id: i.id, 
        name: i.name, 
        user_id: i.user_id
      }
  end

end

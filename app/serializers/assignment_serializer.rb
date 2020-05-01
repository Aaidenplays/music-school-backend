class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :instructor_id, :description, :status, :videos, :feedback
  
  # has_many :video_assignments

end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_type, :student, :instructor
  # , :instructor_requests
  has_one :student
  has_one :instructor

  # def instructor_requests
  #   self.object.instructor_requests.map do |s|
  #     {
  #       id: s.id,
  #       student: s.student,
  #       instructor: s.instructor
  #     }
  #   end
  # end
end

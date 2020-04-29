class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_type, :student, :instructor
  has_one :student
  has_one :instructor
end

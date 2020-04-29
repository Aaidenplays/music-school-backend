class SessionSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_type, :student
  has_one :student
  has_one :instructor
end

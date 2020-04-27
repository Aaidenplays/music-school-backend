class Student < ApplicationRecord
    has_many :instructor_requests
    has_many :instructors, through: :instructor_requests

    has_many :user_instruments
    has_many :instruments, through: :user_instruments

    has_many :assignments

    has_many :videos

    belongs_to :user
end
class Instructor < ApplicationRecord
    has_many :instructor_requests
    has_many :students, through: :instructor_requests

    has_many :user_instruments
    has_many :instruments, through: :user_instruments
    
    has_many :assignments
    has_one :resource
    has_many :videos

    belongs_to :user
end
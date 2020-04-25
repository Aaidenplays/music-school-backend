class Video < ApplicationRecord
    has_one :student
    has_one :instructor
    has_one :resources
    
    has_many :video_assignments
    has_many :assignments, through: :video_assignments
end

class Assignment < ApplicationRecord
    has_many :materal_assignments
    has_many :materials, through: :materal_assignments
    
    # has_one :instructor_student_assignment
    belongs_to :student
    belongs_to :instructor

    has_many :video_assignments
    has_many :videos, through: :video_assignments
end

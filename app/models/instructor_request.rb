class InstructorRequest < ApplicationRecord
    belongs_to :instructor
	belongs_to :student
end

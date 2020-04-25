class UserInstrument < ApplicationRecord
	has_one :instructor
	has_one :student
	belongs_to :instrument
end

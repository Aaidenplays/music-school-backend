class Resource < ApplicationRecord
    belongs_to :instructor
	has_many :materials
    has_many :videos
end

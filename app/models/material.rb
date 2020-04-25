class Material < ApplicationRecord
    belongs_to :resource

    has_many :materal_assignments
    has_many :assigments, through: :materal_assignments
end

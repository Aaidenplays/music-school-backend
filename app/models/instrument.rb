class Instrument < ApplicationRecord
    has_many :user_instruments
    has_many :students, through: :user_instruments 
    has_many :instructors, through: :user_instruments
end

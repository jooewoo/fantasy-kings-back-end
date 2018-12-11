class Stat < ApplicationRecord
 has_many :teams
 has_many :user, through: :teams
end

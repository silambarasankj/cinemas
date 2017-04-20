class Skill < ApplicationRecord
	has_many :talents
	has_many :profiles, through: :talents
end

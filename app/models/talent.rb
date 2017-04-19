class Talent < ApplicationRecord
  belongs_to :profile
  belongs_to :skill
  validates_presence_of :skill_id
end

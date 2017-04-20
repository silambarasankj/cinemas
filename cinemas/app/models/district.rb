class District < ApplicationRecord
  belongs_to :state

  delegate :name, :to=> :state, :prefix=>true 
end

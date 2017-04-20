class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :state
  belongs_to :district
  has_many :talents
  has_many :skills, through: :talents

  accepts_nested_attributes_for :talents, :allow_destroy => true
  delegate :email, :to => :user, :prefix => true
  delegate :name, :to => :state, :prefix => true
  delegate :name, :to => :district, :prefix => true
  delegate :name, :to => :skills, :prefix => true
  validates_presence_of :name #,:mobile_no,:gender,:marital_status,:state_id,:district_id,:address
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :uploads
  has_many :galleries
  has_many :profiles

=begin
before_save :assign_role

def assign_role
  self.role = Role.find_by name: "Regular" if self.role.nil?
end
=end

ROLES = %i[moderator admin superadmin]




def roles=(roles)
  roles = [*roles].map { |r| r.to_sym }
  self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
end

def roles
  ROLES.reject do |r|
    ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
  end
end

def has_role?(role)
  roles.include?(role)
end


=begin
def role?(base_role)
  ROLES.index(base_role.to_s) <= ROLES.index(role)
end

def admin?
  self.profiles.role.name == "Admin"
end

def regular?
  self.role.name == "Regular"
end
=end

end

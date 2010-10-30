class User < ActiveRecord::Base

  has_many :leagues

  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :confirmable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :roles, :username, :remember_me

  # ROLES ----------------------------------------------------------------------
  ROLES = %w[admin manager user]

  scope :with_role, lambda{|role| where("roles_mask & #{2**ROLES.index(role.to_s)} > 0")}

  def roles=(roles)
    self.roles_mask = (roles & ROLES).map{|r| 2**ROLES.index(r)}.sum
  end

  def roles
    ROLES.reject{|r| ((roles_mask || 0) & 2**ROLES.index(r)).zero?}
  end

  def role_symbols
    roles.map(&:to_sym)
  end

  def role?(role)
    roles.include? role.to_s
  end
  # /ROLES ---------------------------------------------------------------------
end

# == Schema Information
#
# Table name: users
#
#  id                   :integer(4)      not null, primary key
#  email                :string(255)     default(""), not null
#  encrypted_password   :string(128)     default(""), not null
#  password_salt        :string(255)     default(""), not null
#  confirmation_token   :string(255)
#  confirmed_at         :datetime
#  confirmation_sent_at :datetime
#  reset_password_token :string(255)
#  remember_token       :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer(4)      default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  roles_mask           :integer(4)
#  username             :string(255)
#


class User < ActiveRecord::Base
  has_secure_password
  has_many :role_users
  has_many :roles, through: :role_users
end

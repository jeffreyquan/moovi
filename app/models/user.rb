class User < ApplicationRecord
  has_many :lists
  has_secure_password

  has_many :reviews
  has_many :movies, :through => :reviews

  validates :email, :presence => true, :uniqueness => true
  validates :username, :presence => true, :uniqueness => true
end

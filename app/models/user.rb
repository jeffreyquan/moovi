class User < ApplicationRecord
  has_many :lists, dependent: :destroy
  has_secure_password

  has_many :reviews
  has_many :movies, :through => :reviews

  validates :email, :presence => true, :uniqueness => true, :length => { :minimum => 5 }
  validates :username, :presence => true, :uniqueness => true
end

class User < ApplicationRecord
  has_many :lists, dependent: :destroy
  has_secure_password

  has_many :reviews
  has_many :movies, :through => :reviews

  validates :email, :presence => true, :uniqueness => { :case_sensitive => false }, :length => { :minimum => 5 }
  validates :username, :presence => true, :uniqueness => { :case_sensitive => false }, :format => { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :password, :presence => true, :length => { :minimum => 5, :maximum => 20 }
end

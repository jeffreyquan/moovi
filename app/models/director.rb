class Director < ApplicationRecord
  has_many :movies
  has_many :genres, :through => :movies

  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
end

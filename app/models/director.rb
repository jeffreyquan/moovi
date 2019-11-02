class Director < ApplicationRecord
  has_many :movies
  has_many :genres, :through => :movies
end

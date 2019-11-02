class Movie < ApplicationRecord
  belongs_to :director, :optional => true
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :lists
  has_many :reviews
  has_many :users, :through => :reviews

end

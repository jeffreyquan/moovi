class Genre < ApplicationRecord
  has_and_belongs_to_many :movies
  has_many :actors, :through => :movies
  has_many :directors, :through => :movies
  has_many :lists, :through => :movies

  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }

  include PgSearch::Model
  pg_search_scope :search, against: :name,
  associated_against: {
    actors: :name,
    directors: :name,
    movies: [:name, :overview]
  },
  using: {tsearch: {dictionary: "english"}}
end

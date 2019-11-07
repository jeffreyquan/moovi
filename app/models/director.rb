class Director < ApplicationRecord
  has_many :movies
  has_many :genres, :through => :movies
  has_many :actors, :through => :movies
  has_and_belongs_to_many :lists

  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
  # validates :imdb_id, :uniqueness => true
  validates :tmdb_id, :uniqueness => true

  include PgSearch::Model
  pg_search_scope :search, against: :name,
  associated_against: {
    actors: :name,
    genres: :name,
    movies: :title
  },
  using: {tsearch: {dictionary: "english"}}
end

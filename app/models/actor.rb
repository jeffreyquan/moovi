class Actor < ApplicationRecord
  has_and_belongs_to_many :movies
  has_and_belongs_to_many :lists
  has_many :directors, :through => :movies
  has_many :genres, :through => :movies

  # validates :imdb_id, :uniqueness => true
  validates :tmdb_id, :uniqueness => true

  include PgSearch::Model
  pg_search_scope :search, against: :name,
  associated_against: {
    genres: :name,
    directors: :name,
    movies: [:name, :overview]
  },
  using: {tsearch: {dictionary: "english"}}

end

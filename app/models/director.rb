class Director < ApplicationRecord
  has_many :movies
  has_many :genres, :through => :movies
  has_many :actors, :through => :movies
  has_and_belongs_to_many :lists

  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
  # validates :imdb_id, :uniqueness => true
  validates :tmdb_id, :uniqueness => true

  # this is part of the PgSearch set up
  include PgSearch

  pg_search_scope :search, against: :name,
    associated_against: {
      genres: :name,
      actors: :name,
      movies: [:title, :overview]
    },
    using: {tsearch: {dictionary: "english"}}

  def self.text_search query
    if query.present?
      search(query)
    else
      scoped
    end
  end
 # end of PgSearch

end

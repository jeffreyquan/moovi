class Director < ApplicationRecord
  has_many :movies
  has_many :genres, :through => :movies
  has_many :actors, :through => :movies
  has_and_belongs_to_many :lists

  validates :name, :presence => true, :uniqueness => { :case_sensitive => false }
  # validates :imdb_id, :uniqueness => true
  validates :tmdb_id, :uniqueness => true

  # this is part of the PgSearch set up
  include PgSearch::Model
  pg_search_scope :search, against: :name,
    associated_against: {
      genres: :name,
      actors: :name,
      movies: :title
    },
    :using => {
      :tsearch => {
        :dictionary => "english",
        :prefix => true
      },
      :trigram => {
        :word_similarity => true,
        :threshold => 0.3
      }
    }

  def self.text_search query
    if query.present?
      search(query)
    else
      scoped
    end
  end
 # end of PgSearch

end

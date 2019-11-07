class Movie < ApplicationRecord
  belongs_to :director, :optional => true
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :lists
  has_many :reviews
  has_many :users, :through => :reviews

  # validates :imdb_id, :uniqueness => true
  validates :tmdb_id, :uniqueness => true

  include PgSearch::Model
  pg_search_scope :search, against: [:name, :overview],
  associated_against: {
    actors: :name,
    genres: :name,
    directors: :name,
  },
  using: {tsearch: {dictionary: "english"}}

  def self.convert_duration duration

    @result = ''
    if duration < 60
      @result = duration.to_s + 'min'
    else
      hours = duration / 60
      minutes = duration % 60
      if minutes == 0
        @result = hours.to_s + 'h'
      else
        @result = hours.to_s + 'h' + ' ' + minutes.to_s + 'min'
      end
    end
    @result
  end

  def self.get_movie_details_from_tmdb tmdb_id
    tmdb_key = Rails.application.secrets.tmdb_api_key
    url = "https://api.themoviedb.org/3/movie/#{tmdb_id}?api_key=#{tmdb_key}&language=en-US"
    HTTParty.get url
  end

  def self.get_trailer_from_tmdb tmdb_id
    tmdb_key = Rails.application.secrets.tmdb_api_key
    url = "https://api.themoviedb.org/3/movie/#{tmdb_id}/videos?api_key=#{tmdb_key}&language=en-US"
    HTTParty.get url
  end

  def self.get_credits_from_tmdb tmdb_id
    tmdb_key = Rails.application.secrets.tmdb_api_key
    url = "https://api.themoviedb.org/3/movie/#{tmdb_id}/credits?api_key=#{tmdb_key}"
    HTTParty.get url
  end

  def self.get_director_details_from_tmdb tmdb_id
    tmdb_key = Rails.application.secrets.tmdb_api_key
    url = "https://api.themoviedb.org/3/person/#{ tmdb_id}?api_key=#{tmdb_key}&language=en-US"
    HTTParty.get url
  end

  def self.get_movie_certification_from_tmdb tmdb_id
    tmdb_key = Rails.application.secrets.tmdb_api_key
    url = "https://api.themoviedb.org/3/movie/#{tmdb_id}/release_dates?api_key=#{tmdb_key}"
    HTTParty.get url
  end

  def self.get_actor_details_from_tmdb tmdb_id
    tmdb_key = Rails.application.secrets.tmdb_api_key
    url = "https://api.themoviedb.org/3/person/#{tmdb_id}?api_key=#{tmdb_key}&language=en-US"
    HTTParty.get url
  end

  def self.create_movie_from_tmdb tmdb_id
    @movie = Movie.new
    @movie.tmdb_id = tmdb_id
    response = Movie.get_movie_details_from_tmdb tmdb_id
    @movie.title = response["original_title"]
    @movie.year = response["release_date"].to_i
    @movie.overview = response["overview"];
    @movie.duration = response["runtime"]
    @movie.image = "https://image.tmdb.org/t/p/w600_and_h900_bestv2" + response["poster_path"]
    @movie.imdb_id = response["imdb_id"]

    response["genres"].each do |genre|
      genre_name = genre["name"]
      if Genre.all.find_by(:name => genre_name).present?
        genre = Genre.all.find_by(:name => genre_name)
        @movie.genres << genre
      else
        genre = Genre.new
        genre.name = genre_name
        genre.save
        @movie.genres << genre
      end
    end

    response_get_youtube = Movie.get_trailer_from_tmdb tmdb_id
    @movie.youtube = "https://www.youtube.com/watch?v=" + response_get_youtube["results"][0]["key"]

    response_get_cert = Movie.get_movie_certification_from_tmdb tmdb_id
    classification = ""
    response_get_cert["results"].each do |result|
      if result["iso_3166_1"] == "US"
        classification = result["release_dates"][0]["certification"]
      end
    end
    @movie.classification = classification
    response_get_credits = Movie.get_credits_from_tmdb tmdb_id

    director_credit = response_get_credits["crew"].select{|crew| crew["job"] == 'Director'}[0]
    director_tmdb_id = director_credit["id"]

    if Director.find_by(:tmdb_id => director_tmdb_id).present?
      director = Director.find_by(:tmdb_id => director_tmdb_id)
      director_id = director.id
      @movie.director_id = director_id
    else
      new_director = Director.new
      new_director.name = director_credit["name"]
      new_director.image = "https://image.tmdb.org/t/p/w600_and_h900_bestv2" + director_credit["profile_path"]
      director_details = Movie.get_director_details_from_tmdb director_tmdb_id
      new_director.dob = director_details["birthday"]
      new_director.pob = director_details["place_of_birth"]
      new_director.tmdb_id = director_tmdb_id
      new_director.imdb_id = director_details["imdb_id"]
      new_director.save
      @movie.director_id = new_director.id
    end
      @movie.save

      response_get_credits = Movie.get_credits_from_tmdb tmdb_id

      actors_credits = response_get_credits["cast"]
      actors_credits.each do |actor|
        actor_tmdb_id = actor["id"]
        if Actor.find_by(:tmdb_id => actor_tmdb_id).present?
          actor_to_add = Actor.find_by(:tmdb_id => actor_tmdb_id)
          @movie.actors << actor_to_add
        else
          new_actor = Actor.new
          actor_details = get_actor_details_from_tmdb actor_tmdb_id
          new_actor.name = actor["name"]
          new_actor.dob = actor_details["birthday"]
          new_actor.pob = actor_details["place_of_birth"]
          new_actor.imdb_id = actor_details["imdb_id"]
          new_actor.tmdb_id = actor_tmdb_id
          new_actor.image = ("https://image.tmdb.org/t/p/w600_and_h900_bestv2" + actor_details["profile_path"]) if actor_details["profile_path"].present?
          new_actor.save
          @movie.actors << new_actor
        end
      end

      @movie
    end

  end

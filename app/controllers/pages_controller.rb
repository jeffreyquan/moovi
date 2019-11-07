class PagesController < ApplicationController
  before_action :check_for_login, :only => [:search, :result, :my_lists]

  def home
    @heroes = (Actor.all + Director.all + Movie.all).shuffle
  end

  def search
  end

  def my_lists

  end

  def result
    # Using TheMovieDB API
    query = params[:title]
    # @movies = Tmdb::Movie.find(title) # using https://github.com/ahmetabdi/themoviedb gem
    tmdb_key = Rails.application.secrets.tmdb_api_key

    url = "https://api.themoviedb.org/3/search/movie?api_key=#{tmdb_key}&query=#{ query.downcase.split(' ').join('+') }"
    results = HTTParty.get url

    if results["results"] != nil
      @tmdb_results = results["results"][0..9]
    else
      @tmdb_results = nil
    end

    # @movies = Movie.all

    # @movies = get_movie url
    # @top_five = @movies.body["Search"][0..4]
    #

  end

  private
  # using Rapid API

  # Using RapidAPI
  # title = params[:title]
  # url = "https://movie-database-imdb-alternative.p.rapidapi.com/?page=1&r=json&s=#{ title.split(' ').join('+') }"

  # def get_movie url
  #   Unirest.get url, headers:{
  #   "X-RapidAPI-Host" => "movie-database-imdb-alternative.p.rapidapi.com",
  #   "X-RapidAPI-Key" => Rails.application.secrets.rapid_api_key
  #   }
  #   # this action will get the whole json
  # end

end

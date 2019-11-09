class PagesController < ApplicationController
  before_action :check_for_login, :only => [:my_lists]

  def home
    @heroes = (Actor.all + Director.all + Movie.all).shuffle
  end

  def my_lists
  end

  def tmdb_result
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
  end

  def search
  end

  def result
   if params[:search_query].present?
     query = params[:search_query].titleize

     # search query in movies and associated models
     movies = Movie.all
     @movies_result = movies.text_search query

     # search query in actors and associated models
     actors = Actor.all
     @actors_result = actors.text_search query

     # search query in actors and associated models
     directors = Director.all
     @directors_result = directors.text_search query
    end
  end
end

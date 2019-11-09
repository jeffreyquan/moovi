class MoviesController < ApplicationController
  before_action :check_for_admin, :only => [:destroy]
  before_action :check_for_login, :only => [:add, :create, :edit, :update]

  def index
    @movies = Movie.all.shuffle
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.create movie_params
    redirect_to movie
  end

  def add
    tmdb_id = params[:id]
    if Movie.find_by(:tmdb_id => tmdb_id).present?
      @movie = Movie.find_by :tmdb_id => tmdb_id
    else
      @movie = Movie.create_movie_from_tmdb tmdb_id
    end
    redirect_to movie_path(@movie.id)
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    movie = Movie.find params[:id]
    movie.update movie_params
    redirect_to movie
  end

  def show
    @movie = Movie.find params[:id]
    id = params[:id]
    if @current_user.present?
      movie_lists = @current_user.lists.where(:category => 'Movies')
      @lists_movie_is_in  = []
      movie_lists.each do |list|
        list.movies.each do |film|
          if film[:id] == @movie.id
            @lists_movie_is_in << list
          end
        end
      end
    end
    youtube_url = @movie.youtube
    youtube_id = Movie.get_youtube_id youtube_url
    @embed_url = "https://youtube.com/embed/" + youtube_id
    if @movie.duration.present?
      duration = @movie.duration
      @duration = Movie.convert_duration duration
    end
    @top_five_actors = @movie.actors[0..4]

  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :overview, :classification, :duration, :image, :director_id, :youtube, :genre_ids => [],:list_ids => [])
  end

end

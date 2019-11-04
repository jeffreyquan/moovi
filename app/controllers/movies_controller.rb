class MoviesController < ApplicationController
  before_action :check_for_admin, :only => [:new, :edit, :update, :create, :destroy]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.create movie_params
    redirect_to movie
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
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :overview, :classification, :duration, :image, :director_id, :list_ids => [], :genre_ids => [])
  end
end

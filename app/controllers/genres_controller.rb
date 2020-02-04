class GenresController < ApplicationController
  before_action :check_for_admin, :except => [:index, :show]

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create genre_params
    redirect_to genre
  end

  def edit
    @genre = Genre.find params[:id]
  end

  def update
    genre = Genre.find params[:id]
    genre.update genre_params
    redirect_to genre_path
  end

  def show
    @genre = Genre.find params[:id]
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end

class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
  end

  def edit
  end

  def show
    @genre = Genre.find params[:id]
  end
end

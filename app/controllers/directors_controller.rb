class DirectorsController < ApplicationController
  before_action :check_for_admin, :only => [:new, :edit, :update, :create, :destroy]

  def index
    @directors = Director.all
  end

  def new
    @director = Director.new
  end

  def create
    director = Director.create director_params
    redirect_to director
  end

  def edit
    @director = Director.find params[:id]
  end

  def update
    director = Director.find params[:id]
    director.update director_params
  end

  def show
    @director = Director.find params[:id]
  end

  private
  def director_params
    params.require(:director).permit(:name, :dob, :pob, :image)
  end
end

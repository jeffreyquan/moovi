class ListsController < ApplicationController
  before_action :check_for_login, :only => [:create, :new, :edit]


  def index
    @lists = List.where(:private => false)
  end

  def new
    @list = List.new
  end

  def create
    list = List.create list_params
    @current_user.lists << list
    redirect_to root_path
  end

  def edit
    @list = List.find params[:id]
  end

  def update
    list = List.find params[:id]
    list.update list_params
    redirect_to list
  end

  def show
    @list = List.find params[:id]
  end

  # def add
  #   movie = Movie.find params[:id]
  #   list
  # end

  def destroy
    list = List.find params[:id]
    list.destroy
    redirect_to root_path
  end

  private
  def list_params
    params.require(:list).permit(:name, :private, :movie_ids => [])
  end
end

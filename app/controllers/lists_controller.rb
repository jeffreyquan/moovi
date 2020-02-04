class ListsController < ApplicationController
  before_action :check_for_login, :except => [:index, :show]

  def index
    lists = List.where(:private => false)
    @movie_lists = lists.where(:category => "Movies")
    @actor_lists = lists.where(:category => "Actors")
    @director_lists = lists.where(:category => "Directors")
  end

  def new
    @list = List.new
  end

  def create
    list = List.create list_params
    @current_user.lists << list
    redirect_to movies_path if list.category == "Movies"
    redirect_to actors_path if list.category == "Actors"
    redirect_to directors_path if list.category == "Directors"
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

  def destroy
    list = List.find params[:id]
    list.destroy
    redirect_to root_path
  end

  private
  def list_params
    params.require(:list).permit(:name, :private, :category, :movie_ids => [], :actor_ids => [], :director_ids => [])
  end
end

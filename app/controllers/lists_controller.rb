class ListsController < ApplicationController
  before_action :check_for_login, :only => [:create, :new]

  def new
    @list = List.new
  end

  def create
    list = List.create list_params
    @current_user.lists << list
    redirect_to root_path
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end
end

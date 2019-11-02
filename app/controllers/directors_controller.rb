class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def new
  end

  def edit
  end

  def show
  end
end

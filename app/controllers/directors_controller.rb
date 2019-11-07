class DirectorsController < ApplicationController
  before_action :check_for_admin, :only => [:destroy]
  before_action :check_for_login, :only => [:new, :edit, :create, :update]

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
    redirect_to director
  end

  def show
    @director = Director.find params[:id]
    id = params[:id]
    if @current_user.present?
      if @current_user.lists.where(:category => 'Directors').present?
        director_lists = @current_user.lists.where(:category => 'Directors')
        @lists_director_is_in = []
        director_lists.each do |list|
          list.directors.each do |person|
            if person[:id] == @director.id
              @lists_director_is_in << list
            end
          end
        end
      end
    end
    random_youtube_url = @director.movies.sample.youtube
    youtube_id = Director.get_youtube_id random_youtube_url
    @embed_url = "https://youtube.com/embed/" + youtube_id
  end

  def destroy
    director = Director.find params[:id]
    director.destroy
    redirect_to my_lists_path
  end

  private
  def director_params
    params.require(:director).permit(:name, :dob, :pob, :image, :movie_ids => [],:list_ids => [])
  end
end

class ActorsController < ApplicationController
  before_action :check_for_admin, :only => [:destroy]
  before_action :check_for_login, :only => [:new, :edit, :update, :create]

  def index
    @actors = Actor.all.sort_by {|key| key["name"]}
  end

  def new
    @actor = Actor.new
  end

  def create
    actor = Actor.create actor_params
    redirect_to actor
  end

  def edit
    @actor = Actor.find params[:id]
  end

  def update
    actor = Actor.find params[:id]
    actor.update actor_params
    redirect_to actor
  end

  def show
    @actor = Actor.find params[:id]
    id = params[:id]
    if @current_user.present?
      if @current_user.lists.where(:category => 'Actors').present?
        actor_lists = @current_user.lists.where(:category => 'Actors')
        @lists_actor_is_in = []
        actor_lists.each do |list|
          list.actors.each do |person|
            if person[:id] == @actor.id
              @lists_actor_is_in << list
            end
          end
        end
      end
    end

    random_youtube_url = @actor.movies.sample.youtube
    youtube_id = Actor.get_youtube_id random_youtube_url
    @embed_url = "https://youtube.com/embed/" + youtube_id
  end

  def destroy
    actor = Actor.find params[:id]
    actor.destroy
    redirect_to actors_path
  end

  private
  def actor_params
    params.require(:actor).permit(:name, :dob, :pob, :image, :imdb_id, :tmdb_id, :director_id, :movie_ids => [], :list_ids => [])
  end

end

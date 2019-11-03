class AddYoutubeToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :youtube, :text
  end
end

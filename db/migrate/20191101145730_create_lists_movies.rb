class CreateListsMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :lists_movies, :id => false do |t|
      t.integer :list_id
      t.integer :movie_id
    end
  end
end

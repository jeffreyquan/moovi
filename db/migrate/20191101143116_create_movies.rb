class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.text :title
      t.integer :year
      t.text :overview
      t.text :classification
      t.integer :duration
      t.text :image
      t.text :imdb_id
      t.integer :tmdb_id
      t.integer :director_id

      t.timestamps
    end
  end
end

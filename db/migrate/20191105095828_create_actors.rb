class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.text :name
      t.date :dob
      t.text :pob
      t.text :imdb_id
      t.integer :tmdb_id
      t.text :image

      t.timestamps
    end
  end
end

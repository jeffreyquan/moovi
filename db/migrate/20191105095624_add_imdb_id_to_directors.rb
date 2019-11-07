class AddImdbIdToDirectors < ActiveRecord::Migration[6.0]
  def change
    add_column :directors, :imdb_id, :text
  end
end

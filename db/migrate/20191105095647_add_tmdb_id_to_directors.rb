class AddTmdbIdToDirectors < ActiveRecord::Migration[6.0]
  def change
    add_column :directors, :tmdb_id, :integer
  end
end

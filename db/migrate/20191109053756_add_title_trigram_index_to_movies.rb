class AddTitleTrigramIndexToMovies < ActiveRecord::Migration[6.0]
  def change
    add_index :movies, :title, using: :gist, opclass: {title: :gist_trgm_ops}
  end
end

class AddNameTrigramIndexToDirectors < ActiveRecord::Migration[6.0]
  def change
    add_index :directors, :name, using: :gist, opclass: {name: :gist_trgm_ops}
  end
end

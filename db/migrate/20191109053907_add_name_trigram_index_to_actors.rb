class AddNameTrigramIndexToActors < ActiveRecord::Migration[6.0]
  def change
    add_index :actors, :name, using: :gist, opclass: {name: :gist_trgm_ops}
  end
end

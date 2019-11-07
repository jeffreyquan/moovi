class CreateActorsLists < ActiveRecord::Migration[6.0]
  def change
    create_table :actors_lists, :id => false do |t|
      t.integer :actor_id
      t.integer :list_id
    end
  end
end

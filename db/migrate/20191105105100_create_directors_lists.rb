class CreateDirectorsLists < ActiveRecord::Migration[6.0]
  def change
    create_table :directors_lists, :id => false do |t|
      t.integer :director_id
      t.integer :list_id
    end
  end
end

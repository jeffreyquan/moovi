class AddPrivateToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :private, :boolean, :default => true
  end
end

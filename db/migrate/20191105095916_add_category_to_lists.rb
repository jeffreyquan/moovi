class AddCategoryToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :catergory, :text
  end
end

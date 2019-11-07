class RenameCatergoryToCategoryInLists < ActiveRecord::Migration[6.0]
  def change
    rename_column :lists, :catergory, :category
  end
end

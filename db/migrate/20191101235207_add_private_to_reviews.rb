class AddPrivateToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :private, :boolean
  end
end

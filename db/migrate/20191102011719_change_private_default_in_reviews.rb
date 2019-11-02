class ChangePrivateDefaultInReviews < ActiveRecord::Migration[6.0]
  def change
      change_column :reviews, :private, :boolean, :default => true
  end
end

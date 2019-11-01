class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :movie
      t.belongs_to :user
      t.text :review
      t.integer :rating
      t.datetime :reviewed_at

      t.timestamps
    end
  end
end

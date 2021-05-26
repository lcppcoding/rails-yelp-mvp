class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.float :rating, precision: 3, scale: 2
      t.text :content
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end

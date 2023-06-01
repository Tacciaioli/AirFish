class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :reservation, null: false, foreign_key: true
      t.text :comment
      t.float :rating

      t.timestamps
    end
  end
end

class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :model
      t.float :price_daily
      t.integer :rating
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :user, index: true, foreign_key: true
      t.string :product_type
      t.string :color
      t.string :make
      t.string :size
      t.string :availability
      t.decimal :price, precision: 8, scale: 2
      t.string :material
      t.string :seasion
      t.string :description

      t.timestamps null: false
    end
  end
end

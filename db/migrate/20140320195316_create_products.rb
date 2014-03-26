class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :category
      t.string :subcategory
      t.string :brand
      t.string :unit

      t.timestamps
    end
  end
end

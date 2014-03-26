class CreateShippingDetails < ActiveRecord::Migration
  def change
    create_table :shipping_details do |t|
      t.string :full_address_name
      t.string :address_line_one
      t.string :address_line_two
      t.string :city_town
      t.string :state
      t.string :zip
      t.string :country
      t.integer :user_id

      t.timestamps
    end
  end
end

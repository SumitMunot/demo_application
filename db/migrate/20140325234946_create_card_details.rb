class CreateCardDetails < ActiveRecord::Migration
  def change
    create_table :card_details do |t|
      t.string :name_on_card
      t.integer :card_number
      t.date :card_expiry_date
      t.integer :cvv
      t.integer :user_id

      t.timestamps
    end
  end
end

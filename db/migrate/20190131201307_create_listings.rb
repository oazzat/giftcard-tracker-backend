class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.float :price
      t.integer :giftcard_id
      t.integer :user_id
      t.float :price
      t.datetime :date_sold
      t.datetime :date_posted

      t.timestamps
    end
  end
end

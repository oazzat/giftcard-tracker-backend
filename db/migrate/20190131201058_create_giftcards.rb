class CreateGiftcards < ActiveRecord::Migration[5.2]
  def change
    create_table :giftcards do |t|
      t.string :type
      t.datetime :exp_date
      t.string :barcode
      t.string :passcode
      t.float :balance
      t.integer :user_id
      t.datetime :date_verified
      t.string :img

      t.timestamps
    end
  end
end

class AddListedToGiftcards < ActiveRecord::Migration[5.2]
  def change
    add_column :giftcards, :listed, :boolean
  end
end

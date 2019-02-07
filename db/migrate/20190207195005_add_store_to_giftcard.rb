class AddStoreToGiftcard < ActiveRecord::Migration[5.2]
  def change
    add_column :giftcards, :store_id, :integer
  end
end

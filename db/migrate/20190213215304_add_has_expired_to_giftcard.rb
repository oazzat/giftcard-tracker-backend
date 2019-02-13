class AddHasExpiredToGiftcard < ActiveRecord::Migration[5.2]
  def change
    add_column :giftcards, :hasExpired, :boolean
  end
end

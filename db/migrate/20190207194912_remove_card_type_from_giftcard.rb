class RemoveCardTypeFromGiftcard < ActiveRecord::Migration[5.2]
  def change
    remove_column :giftcards, :card_type, :string
  end
end

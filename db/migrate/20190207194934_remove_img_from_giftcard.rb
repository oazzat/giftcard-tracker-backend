class RemoveImgFromGiftcard < ActiveRecord::Migration[5.2]
  def change
    remove_column :giftcards, :img, :string
  end
end

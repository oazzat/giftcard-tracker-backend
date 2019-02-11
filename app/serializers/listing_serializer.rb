class ListingSerializer < ActiveModel::Serializer
  attributes :id, :price, :user_id, :date_sold, :date_posted, :prev_user
  belongs_to :giftcard, serializer: SoldListingGiftcardSerializer
end

class GiftcardSerializer < ActiveModel::Serializer
  attributes :id, :card_type
  has_many :listings
end

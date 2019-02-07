class GiftcardSerializer < ActiveModel::Serializer
  attributes :id
  has_many :listings
  belongs_to :store
end

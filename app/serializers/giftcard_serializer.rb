class GiftcardSerializer < ActiveModel::Serializer
  attributes :id, :exp_date, :balance, :barcode, :passcode, :user_id, :listed, :hasExpired
  has_many :listings
  belongs_to :store
end

class SoldListingGiftcardSerializer < ActiveModel::Serializer
  attributes :id, :exp_date, :balance, :store, :hasExpired, :passcode, :barcode, :listed

end

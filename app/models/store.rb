class Store < ApplicationRecord
  has_many :giftcards
  # has_many :listings, through: :giftcards
end

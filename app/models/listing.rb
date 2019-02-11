class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :giftcard
  # belongs_to :store

end

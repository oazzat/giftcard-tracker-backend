class Giftcard < ApplicationRecord
  belongs_to :user
  belongs_to :listing
end

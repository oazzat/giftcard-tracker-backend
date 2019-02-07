class Giftcard < ApplicationRecord
  belongs_to :user
  belongs_to :store
  has_many :listings



end

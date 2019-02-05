# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


card_types = ["Best-Buy","Amazon","Itunes", "Walmart", "Target"]

# 50.times do
#   Giftcard.create(
#     card_type: card_types.sample,
#     barcode: Faker::Bank.account_number(10),
#     passcode: Faker::Bank.account_number(4),
#     balance: Faker::Number.between(5, 250),
#     exp_date: Faker::Date.between(1.month.from_now, 2.years.from_now),
#     user_id: User.all.sample.id
#   )
# end

# Giftcard.all.each do |gc|
#   if gc.id % 2 != 0
#     Listing.create(
#       price: 0.8 * gc.balance,
#       giftcard_id: gc.id,
#       user_id: gc.user_id,
#       date_posted: Faker::Date.between(5.months.ago, 1.day.ago),
#       date_sold: nil
#     )
#   else
#     Listing.create(
#       price: 0.8 * gc.balance,
#       giftcard_id: gc.id,
#       user_id: gc.user_id,
#       date_posted: Faker::Date.between(5.months.ago, 3.months.ago),
#       date_sold: Faker::Date.between(2.months.ago, 1.day.ago)
#     )
#   end
# end

Giftcard.all.each do |gc|
  if gc.card_type == "Best-Buy"
    gc.img = "https://us4products.nimblecommerce.com/api/v1/images/17015/skin"
    gc.save
  elsif gc.card_type == "Amazon"
    gc.img = "https://production-gameflipusercontent.fingershock.com/us-east-1:47d82dc3-4acd-4d96-8053-9ae2fae26d3a/eba5e616-057e-4196-8f36-16381aa82529/1550faa5-c3b1-4bf9-8dd3-1bb8311bd5ce"
    gc.save
  elsif gc.card_type == "Itunes"
    gc.img = "https://www.giftnix.com/giftnix/img/gift-cards/itunes-gift-card-email-delivery.png"
    gc.save
  elsif gc.card_type == "Walmart"
    gc.img = "https://www.mountaineerins.com/wp-content/uploads/2017/01/Walmart-Gift-Card.png"
    gc.save
  elsif gc.card_type == "Target"
    gc.img = "https://i2.wp.com/dannydealguru.com/wp-content/uploads/2016/02/target-gift-card.png?ssl=1"
    gc.save
  end
end

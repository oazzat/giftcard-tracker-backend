# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


# Create Stores:
          # card_types = ["Best-Buy","Amazon","Itunes", "Walmart", "Target"]
          #
          # card_types.each do |gc|
          #   if gc == "Best-Buy"
          #       Store.create(img: "https://us4products.nimblecommerce.com/api/v1/images/17015/skin", name: gc)
          #     elsif gc == "Amazon"
          #       Store.create(img: "https://production-gameflipusercontent.fingershock.com/us-east-1:47d82dc3-4acd-4d96-8053-9ae2fae26d3a/eba5e616-057e-4196-8f36-16381aa82529/1550faa5-c3b1-4bf9-8dd3-1bb8311bd5ce", name: gc)
          #     elsif gc == "Itunes"
          #       Store.create(img: "https://www.giftnix.com/giftnix/img/gift-cards/itunes-gift-card-email-delivery.png", name: gc)
          #     elsif gc == "Walmart"
          #       Store.create(img: "https://www.mountaineerins.com/wp-content/uploads/2017/01/Walmart-Gift-Card.png", name: gc)
          #     elsif gc == "Target"
          #       Store.create(img: "https://i2.wp.com/dannydealguru.com/wp-content/uploads/2016/02/target-gift-card.png?ssl=1", name: gc)
          #     end
          # end

#Create Users:
          # 50.times do
          #   User.create(
          #     name: Faker::Name,
          #     email: Faker::Internet.email,
          #     username: Faker::Name,
          #     password: Faker::Internet.password()
          #   )
          # end

# Create Giftcards and assign to users:
          # 1000.times do
            # Giftcard.create(
            #   store: Store.all.sample,
            #   barcode: Faker::Bank.account_number(10),
            #   passcode: Faker::Bank.account_number(4),
            #   balance: Faker::Number.between(5, 300),
            #   exp_date: Faker::Date.between(1.month.from_now, 2.years.from_now),
            #   user_id: 107,
            #   listed: false
            # )
          # end


# Create listings to sell (for sale):
          # Giftcard.all.each do |gc|
          #   if gc.id % 3 != 0

              # Listing.create(
              #   price: 0.8 * gc.balance,
              #   giftcard_id: gc.id,
              #   user_id: gc.user_id,
              #   date_posted: Faker::Date.between(5.months.ago, 1.day.ago),
              #   date_sold: nil,
              #   prev_user: nil
              # )
          #      gc.listed = true
          #      gc.save
          #   end
          # end


# Sell some of the listings:
          # Listing.all.each do |li|
          #   if li.id % 2 == 0
          #     buyer = User.all.sample.id
          #     li.giftcard.user_id = buyer
          #     li.giftcard.listed = false
          #     li.giftcard.save
          #
          #     li.prev_user = li.user_id
          #     li.user_id = buyer
          #     li.date_sold = Faker::Date.between(li.date_posted, 1.day.ago)
          #     li.save
          #   end
          # end



          # Listing.create(price: 150, giftcard_id: 2001, user_id: 105, prev_user: 107, date_sold: Faker::Date.between(5.months.ago, 1.day.ago), date_posted: Faker::Date.between(10.months.ago, 6.months.ago))

          # li = Listing.all.find(1335)
          # g = Giftcard.find(1001)
          #
          #     g.user_id = 107
          #     g.listed = false
          #     g.save
          #
          #     li.prev_user = li.user_id
          #     li.user_id = 107
          #     li.date_sold = Faker::Date.between(li.date_posted, 1.day.ago)
          #     li.save

          # Listing.all.last.giftcard.listed = false
          # Listing.all.last.giftcard.save

          # Giftcard.all.each do |c|
          #   bool = Time.now>c.exp_date
          #   c.update(hasExpired: bool)
          # end

  Store.all.where(name: "Amazon").each do |s|
    s.img = "https://production-gameflipusercontent.fingershock.com/us-east-1:47d82dc3-4acd-4d96-8053-9ae2fae26d3a/eba5e616-057e-4196-8f36-16381aa82529/1550faa5-c3b1-4bf9-8dd3-1bb8311bd5ce"
    s.save
  end

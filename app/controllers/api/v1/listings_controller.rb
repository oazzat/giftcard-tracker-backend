class Api::V1::ListingsController < ApplicationController

  skip_before_action :authorized, only:[:index]

  def index
    @listings = Listing.all
    render json: @listings
  end

  def create
    @listing = Listing.create(listing_params)
    @listing.giftcard.update(listed: true)
    @giftcard = @listing.giftcard
    render json: @giftcard
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    @listing.giftcard.update(listed: false, user_id: @listing.user_id)
    @buyer = @listing.user
    @buyer.update(balance: (@buyer.balance - @listing.price))
    @seller = User.find(@listing.prev_user)
    @seller.update(balance: (@seller.balance+@listing.price))
    render json: @listing.giftcard
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy()
    render json: {id: params[:id]}
  end

  # def best_selling
  #   allSold = Listing.all.where.not(date_sold: nil)
  # end

  def user_sold
    render json: Listing.all.where("prev_user = ?",current_user.id).reverse
  end

  def user_purchased
    render json: Listing.all.where(user_id: current_user.id).where.not(date_sold: nil).reverse
  end

  def user_for_sale
    render json: Listing.all.joins(:giftcard).where(giftcards: {listed: true}).where(user_id: current_user.id).where(date_sold: nil).reverse
  end

end

  def listing_params
  params.permit(:id, :price, :giftcard_id, :user_id, :date_sold, :date_posted, :prev_user)
  end

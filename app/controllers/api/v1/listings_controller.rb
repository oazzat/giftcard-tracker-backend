class Api::V1::ListingsController < ApplicationController

  skip_before_action :authorized, only:[:index]

  def index
    @listings = Listing.all
    render json: @listings
  end

  def create
    @listing = Listing.create(listing_params)
    render json: @listing
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    render json: @listing
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy()
    render json: {id: params[:id]}
  end


  end

  def listing_params
  params.permit(:price, :giftcard_id, :user_id, :date_sold, :date_posted, :prev_user)
  end

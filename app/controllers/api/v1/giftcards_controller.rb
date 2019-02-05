class Api::V1::GiftcardsController < ApplicationController

  skip_before_action :authorized, only:[:index]

def index
  @giftcards = Giftcard.all
  render json: @giftcards
end

def create
  @giftcard = Giftcard.create(giftcard_params)
  render json: @giftcard
end

def update
  @giftcard = Giftcard.find(params[:id])
  @giftcard.update(giftcard_params)
  render json: @giftcard
end

def destroy
  @giftcard = Giftcard.find(params[:id])
  @giftcard.destroy()
  render json: {id: params[:id]}
end


end

def giftcard_params
params.permit(:card_type, :exp_date, :barcode, :passcode, :balance, :user_id, :date_verified, :img)
end

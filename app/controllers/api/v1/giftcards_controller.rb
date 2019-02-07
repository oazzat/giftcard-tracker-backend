class Api::V1::GiftcardsController < ApplicationController

  skip_before_action :authorized, only:[:index, :gc_count, :best_selling]

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

# Total cards by type with their count
def gc_count
    render json: Giftcard.select("card_type").group("card_type").order(:count).count
end

# Cards that have been sold (including multiple times) organized by type and their count
def best_selling
  render json: Listing.all.where.not(date_sold: nil).joins(:giftcard).select("card_type").group("card_type").count
end

def for_sale_by_type
  Listing.all.joins(:giftcard).where("card_type = ?",params[:store])
end

end

def giftcard_params
params.permit(:card_type, :exp_date, :barcode, :passcode, :balance, :user_id, :date_verified, :img, :listed)
end

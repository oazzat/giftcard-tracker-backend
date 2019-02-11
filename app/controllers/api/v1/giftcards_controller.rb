class Api::V1::GiftcardsController < ApplicationController

  skip_before_action :authorized, only:[:index, :gc_count, :best_selling, :for_sale_by_type, :for_sale]

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
# def gc_count
#     render json: Giftcard.select("card_type").group("card_type").order(:count).count
# end

# Cards that have been sold (including multiple times) organized by type and their count
# def best_selling
#   render json: Listing.all.where.not(date_sold: nil).joins(:giftcard).select("card_type").group("card_type").count
# end

def for_sale_by_type

  render json: Giftcard.all.joins(:store).joins(:listings).where("name = ? AND listed = true",params[:store]).reverse
end

def for_sale
  render json: Giftcard.all.joins(:store).joins(:listings).where("listed = true").reverse
end

def all_user_cards
  render json: Giftcard.all.where("user_id = ?",current_user.id).reverse
end

end

def giftcard_params
params.permit(:store_id, :exp_date, :barcode, :passcode, :balance, :user_id, :date_verified, :img, :listed)
end

class Api::V1::StoresController < ApplicationController

  skip_before_action :authorized, only:[:index, :best_selling_stores]

  def index
    @stores = Store.all
    render json: @stores
  end

  def best_selling_stores
    count = Listing.all.where.not(date_sold: nil).joins(:giftcard).select(:store_id).group(:store_id).count
    count = count.map do |k,v|
      store = Store.find(k)
      {store.name => v}
    end
    render json: count.sort_by{|obj|obj.values[0]}.reverse
  end


  def store_params
    params.permit(:name, :img)
  end

end

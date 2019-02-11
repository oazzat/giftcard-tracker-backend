class Api::V1::UsersController < ApplicationController

  skip_before_action :authorized, only:[:create, :index]

  def index
    @users = User.all
    render json: @users
  end

  def profile
    render json: current_user
  end

  def create
    @user = User.create(user_params)
    @token = encode_token(user_id: @user.id)
    # byebug
    render json: {user: @user,token: @token}
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy()
    render json: {id: params[:id]}
  end


end

def user_params
  params.require(:user).permit(:name, :username, :password, :email, :balance)
end

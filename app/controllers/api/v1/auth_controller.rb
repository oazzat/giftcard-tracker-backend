class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only:[:create]

  def create
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])
      @token = encode_token({user_id: @user.id})
      render json: {user: @user, token: @token}
    else
      render json: {message: "INVALID USERNAME OR PASSWORD"}
    end
  end


  private

  def user_login_params
    params.permit(:username, :password, :auth)
  end

end

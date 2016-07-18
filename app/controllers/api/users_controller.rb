class Api::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new({
      username: params[:username],
      password: params[:password]
    })

    if @user.save
      render :show
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render :index
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end

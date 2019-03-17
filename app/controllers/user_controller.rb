class UserController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to 'users/index'
    else
      render 'new'
    end
  end

  def edit
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:user_name, :password, :password_confirmation, :email)
  end
end

class UsersController < ApplicationController

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
      redirect_to action: :index
    else
      render 'new'
    end
  end

  def bef_login
  end

  def login
    @user = User.find_by(display_name: params[:display_name], password: params[:password])
    if @user
      flash[:notice] = "ログインしました"
      redirect_to action: :show
    else
      render '/login'
    end
  end

  def edit
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:user_name, :display_name, :email, :password, :password_confirmation)
  end
end

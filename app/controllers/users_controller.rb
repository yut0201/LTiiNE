class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :delete]

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

  def edit
  end

  def delete
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find_by(display_name: params[:display_name])
    end

    def user_params
      params.require(:user).permit(:user_name, :display_name, :email, :password, :password_confirmation)
    end
end

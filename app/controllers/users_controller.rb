class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :delete]

  def index
    @users = User.all
  end

  def show
    # before_action :set_user でユーザ情報取得
  end

  def new
    # session[:id] がNULLでない場合（既存ユーザでログイン中の場合）、
    # 既存ユーザのログアウトを促したい
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to events_path
    else
      render 'new'
    end
  end

  def edit
    # before_action :set_user でユーザ情報取得
  end

  def update
    @user = User.find_by(id: params[:id])

    if current_user = @user
      if @user.update_attributes(user_params)
        flash[:success] = 'successfully update user information.'
        redirect_to user_path(id: @user[:id])
      else
        flash.now[:danger] = 'FAILED! Please check parameters.'
        render 'edit'
      end
    else
      redirect_to home_path
    end
  end

  def delete
  end

  private
    def set_user
      @user = User.find_by(id: params[:id])
    end

    def user_params
      params.require(:user).permit(:user_name, :display_name, :email, :password, :password_confirmation)
    end
end

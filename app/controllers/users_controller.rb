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
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_name] = @user.user_name

      flash[:notice] = "ログインしました"
      redirect_to action: :show
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]

      render '/bef_login'
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

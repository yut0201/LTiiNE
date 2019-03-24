class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
  	if user && user.authenticate(params[:session][:password])
  	  reset_session
      session[:user_name] = user.user_name
      redirect_to '/events'
    else
      flash.now[:danger] = 'メールアドレス または パスワード に誤りがあります。'
      render 'new'
    end
  end
end

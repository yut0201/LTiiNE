class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(display_name: params[:session][:display_name])
  	if user && user.authenticate(params[:session][:password])
  	  log_in user
  	  redirect_to events_path id: user[:id]
    else
      flash.now[:danger] = 'ユーザ名 または パスワード に誤りがあります。'
      render 'new'
    end
  end

  def destroy
  	log_out
  	redirect_to home_path
  end

end

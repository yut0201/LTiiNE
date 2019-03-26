module SessionsHelper
  def current_user
    @current_user ||= User.find_by(display_name: session[:display_name])
  end

  def logged_in?
    current_user.present?
  end

  def log_in(user)
    session[:display_name] = user.display_name
  end

  def log_out
    reset_session
    @current_user = nil
  end
end
